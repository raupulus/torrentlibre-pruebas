---------------------------------------------------
--           Archivo de base de datos            --
---------------------------------------------------

---------------------------------------------------
--                     Roles                     --
---------------------------------------------------
DROP TABLE IF EXISTS roles CASCADE;

/*
 * Roles a los que pertenecen los usuarios
 * Existen: admin, editor, user
 */
CREATE TABLE roles (
    id               BIGSERIAL     PRIMARY KEY
  , tipo             VARCHAR(255)  NOT NULL UNIQUE
  , descripcion      VARCHAR(255)
);

CREATE INDEX idx_roles_tipo ON roles (tipo);

---------------------------------------------------
--                    Usuarios                   --
---------------------------------------------------
DROP TABLE IF EXISTS usuarios_datos CASCADE;

/*
 * Datos sensibles de usuarios
 */
CREATE TABLE usuarios_datos (
    usuario_id       BIGINT        PRIMARY KEY --REFERENCES usuarios (id)
                                   --ON DELETE CASCADE
  , nombre           VARCHAR(255)
  , nick             VARCHAR(255)  NOT NULL UNIQUE
  , web              VARCHAR(255)
  , localidad        VARCHAR(255)
  , provincia        VARCHAR(255)
  , direccion        VARCHAR(255)
  , telefono         VARCHAR(255)
  , biografia        VARCHAR(255)
  , fecha_nacimiento DATE
  , geoloc           VARCHAR(255)
  , sexo           CHAR          CHECK (sexo = 'F' OR sexo = 'M')
);

CREATE INDEX idx_usuarios_datos_nick ON usuarios_datos (nick);


DROP TABLE IF EXISTS usuarios CASCADE;

/*
 * Usuarios y datos menos sensible
 */
CREATE TABLE usuarios (
    id               BIGSERIAL     PRIMARY KEY
  , password         VARCHAR(255)  NOT NULL
  , email            VARCHAR(255)  NOT NULL UNIQUE
  , auth_key         VARCHAR(255)
  , token            VARCHAR(255)  UNIQUE
  , created_at       TIMESTAMP(0)  DEFAULT LOCALTIMESTAMP
  , updated_at       TIMESTAMP(0)  DEFAULT LOCALTIMESTAMP
  , datos_id         BIGINT        REFERENCES usuarios_datos(usuario_id)
  , rol_id           BIGINT        DEFAULT 1
                                   NOT NULL REFERENCES roles (id)
                                   ON DELETE NO ACTION
                                   ON UPDATE CASCADE
);

CREATE INDEX idx_usuarios_email ON usuarios (email);


---------------------------------------------------
--                  Licencias                    --
---------------------------------------------------
DROP TABLE IF EXISTS licencias CASCADE;

/*
 * Licencias para asignar a los torrents.
 * Las licencias (tipo) tienen un enlace hacia la web oficial (url) y
 * el nombre de la imagen para esta.
 */
CREATE TABLE licencias (
    id               BIGSERIAL     PRIMARY KEY
  , tipo             VARCHAR(255)  NOT NULL UNIQUE
  , url              VARCHAR(255)  NOT NULL UNIQUE
  , imagen           VARCHAR(255)
);

CREATE INDEX idx_licencias_tipo ON licencias (tipo);

---------------------------------------------------
--                   TORRENTS                    --
---------------------------------------------------
DROP TABLE IF EXISTS torrents CASCADE;

/*
 * Información sobre los torrents
 */
CREATE TABLE torrents (
    id              BIGSERIAL     PRIMARY KEY
  , licencia_id     BIGINT        NOT NULL REFERENCES licencias (id)
  , titulo          VARCHAR(255)  NOT NULL
  , resumen         VARCHAR(255)  NOT NULL
  , descripcion     VARCHAR(500)
  , imagen          VARCHAR(255)
  , file            VARCHAR(255)  -- Archivo .torrent
  , magnet          VARCHAR(255)  -- enlace magnet al torrent
);

---------------------------------------------------
--                 COMENTARIOS                   --
---------------------------------------------------
DROP TABLE IF EXISTS comentarios CASCADE;

/**
 * Tabla comentarios
 *
 * Todos los comentarios se asocian a un usuario y un torrent.
 * Un comentario puede ser hijo de otro (ser una respuesta a otro comentario)
 * en ese caso tendrá "comentario_id" que es precisamente el padre de este.
 */
CREATE TABLE comentarios (
    id              BIGSERIAL  PRIMARY KEY
  , usuario_id      BIGINT     NOT NULL REFERENCES "usuarios" (id)
                               ON DELETE NO ACTION
                               ON UPDATE CASCADE
  , torrent_id      BIGINT     NOT NULL REFERENCES torrents (id)
                               ON DELETE CASCADE
                               ON UPDATE CASCADE
  , contenido       VARCHAR(500)  NOT NULL
  , comentario_id   BIGINT     REFERENCES comentarios (id)
                               ON DELETE NO ACTION
                               ON UPDATE CASCADE
  , created_at      TIMESTAMP(0)  NOT NULL DEFAULT LOCALTIMESTAMP
  , updated_at      TIMESTAMP(0)
  , deleted         BOOLEAN    DEFAULT FALSE
);

CREATE INDEX idx_comentarios_usuario_id ON comentarios (usuario_id);
CREATE INDEX idx_comentarios_torrent_id ON comentarios (torrent_id);
CREATE INDEX idx_comentarios_comentario_id ON comentarios (comentario_id);


---------------------------------------------------
--                    BANEADOS                   --
---------------------------------------------------
DROP TABLE IF EXISTS usuarios_bloqueados CASCADE;

/**
 * Usuarios que han sido bloqueados
 */
CREATE TABLE usuarios_bloqueados (
    id            BIGSERIAL    PRIMARY KEY
  , usuario_id    BIGINT       NOT NULL REFERENCES "usuarios" (id)
  , created_at    TIMESTAMP(0) DEFAULT  LOCALTIMESTAMP
);

CREATE INDEX idx_usuarios_bloqueados_usuario_id
  ON usuarios_bloqueados (usuario_id);


---------------------------------------------------
--                     VISTAS                    --
---------------------------------------------------

/**
 * Vista que engloba todos los datos de usuarios.
 */
CREATE OR REPLACE VIEW usuarios_view AS
  SELECT
    u.id, u.password, u.email, u.auth_key, u.token, u.created_at, u.updated_at,

    ud.nombre, ud.nick, ud.web, ud.localidad, ud.provincia, ud.direccion,
    ud.telefono, ud.biografia, ud.fecha_nacimiento, ud.geoloc, ud.sexo,

    r.tipo

  FROM "usuarios" u
    LEFT JOIN usuarios_datos ud ON u.id = ud.usuario_id
    LEFT JOIN roles r on u.rol_id = r.id
  GROUP BY u.id, ud.usuario_id, r.tipo
;

/*
 * Vista que agrupa los torrents con licencias y comentarios.
 * Campos calculados:
 * n_comentarios → Cantidad de comentarios padres por torrent.
 */
CREATE OR REPLACE VIEW torrents_view AS
  SELECT
    t.id, t.titulo, t.resumen, t.descripcion, t.imagen, t.file,
    t.magnet,

    l.tipo, l.url, l.imagen as imagen_licencia,

    c.contenido, c.created_at, c.updated_at, c.deleted,
    count(c.torrent_id) as n_comentarios
  FROM "torrents" t
    LEFT JOIN licencias l ON t.licencia_id = l.id
    LEFT JOIN comentarios c on t.id = c.torrent_id
  GROUP BY t.id, l.id, c.id
;
-- En comentarios me falta "comentario_id" que hace referencia al padre

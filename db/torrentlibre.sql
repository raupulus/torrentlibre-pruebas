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
);

CREATE INDEX idx_roles_tipo ON roles (tipo);

---------------------------------------------------
--                    Usuarios                   --
---------------------------------------------------
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
  , datos_id         BIGINT        REFERENCES usuarios_datos(id)
  , rol_id           BIGINT        DEFAULT 1
                                   NOT NULL REFERENCES roles (id)
                                   ON DELETE NO ACTION
                                   ON UPDATE CASCADE
);

CREATE INDEX idx_usuarios_email ON usuarios (email);


DROP TABLE IF EXISTS usuarios_datos CASCADE;

/*
 * Datos sensibles de usuarios
 */
CREATE TABLE usuarios_datos (
    id               BIGINT        PRIMARY KEY REFERENCES usuarios (id)
                                   ON DELETE CASCADE
  , nombre           VARCHAR(255)
  , nick             VARCHAR(255)  NOT NULL UNIQUE
  , localidad        VARCHAR(255)
  , provincia        VARCHAR(255)
  , direccion        VARCHAR(255)
  , telefono         VARCHAR(255)
  , biografia        VARCHAR(255)
  , fecha_nacimiento DATE
  , geoloc           VARCHAR(255)
  , genero           CHAR       -- RESTRINGIR A M(Másculino) F(Femenino)
);

CREATE INDEX idx_usuarios_datos_nick ON usuarios_datos (nick);


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
  , descripcion     TEXT(500)
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
 */
CREATE TABLE comentarios (
    id              BIGSERIAL  PRIMARY KEY
  , usuario_id      BIGINT     NOT NULL REFERENCES "usuarios" (id)
                               ON DELETE NO ACTION
                               ON UPDATE CASCADE
  , torrent_id      BIGINT     NOT NULL REFERENCES torrents (id)
                               ON DELETE CASCADE
                               ON UPDATE CASCADE
  , contenido       TEXT(500)  NOT NULL
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

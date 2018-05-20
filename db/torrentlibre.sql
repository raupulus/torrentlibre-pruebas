------------------------------
-- Archivo de base de datos --
------------------------------

---------------------------------------------------
-- Roles --
---------------------------------------------------

DROP TABLE IF EXISTS roles CASCADE;

CREATE TABLE roles
(
    id         BIGSERIAL    PRIMARY KEY
  , tipo     varchar(255) NOT NULL UNIQUE
);

---------------------------------------------------
-- Usuarios--
---------------------------------------------------

DROP TABLE IF EXISTS usuarios CASCADE;

CREATE TABLE usuarios
(
    id         BIGSERIAL    PRIMARY KEY
  , password   varchar(255) NOT NULL
  , auth_key   varchar(255)
  , token      varchar(255) UNIQUE
  , created_at TIMESTAMP(0) DEFAULT localtimestamp
  , updated_at TIMESTAMP(0) DEFAULT localtimestamp
  , rol_id        BIGINT       DEFAULT 1
                            NOT NULL REFERENCES roles (id)
                            ON DELETE NO ACTION
                            ON UPDATE CASCADE
);

CREATE INDEX idx_usuarios_email ON usuarios (email);



DROP TABLE IF EXISTS usuarios_datos CASCADE;

CREATE TABLE usuarios_datos
(
    id_usuario       bigint       PRIMARY KEY REFERENCES usuarios (id)
    ON DELETE CASCADE
  , nombre           varchar(255)
  , nick             varchar(255) NOT NULL UNIQUE
  , email            varchar(255) NOT NULL UNIQUE
  , localidad        varchar(255)
  , provincia        varchar(255)
  , direccion        varchar(255)
  , telefono         varchar(255)
  , biografia        varchar(255)
  , fecha_nacimiento DATE
  , geoloc           varchar(255)
  , genero           CHAR       -- RESTRINGIR A M(Másculino) F(Femenino)
);


---------------------------------------------------
-- Licencias --
---------------------------------------------------

DROP TABLE IF EXISTS licencias CASCADE;

CREATE TABLE licencias
(
    id         BIGSERIAL    PRIMARY KEY
  , tipo       VARCHAR(255) NOT NULL UNIQUE
  , URL        VARCHAR(255) NOT NULL UNIQUE
);




---------------------------------------------------
-- TORRENTS --
---------------------------------------------------


DROP TABLE IF EXISTS torrents CASCADE;

CREATE TABLE torrents
(
    id          BIGSERIAL    PRIMARY KEY
  , licencia_id BIGINT       NOT NULL REFERENCES licencias (id)
  , descripcion TEXT(500)
);






---------------------------------------------------
-- COMENTARIOS --
---------------------------------------------------
DROP TABLE IF EXISTS comentarios CASCADE;

/**
 * Tabla comentarios
 *
 * Todos los comentarios se asocian a un usuario y un torrent.
 * Un comentario puede ser hijo de otro (ser una respuesta a otro comentario)
 */
CREATE TABLE comentarios (
    id                bigserial       PRIMARY KEY
  , usuario_id        bigint          NOT NULL REFERENCES "usuarios" (id)
                                          ON DELETE NO ACTION
                                          ON UPDATE CASCADE
  , torrent_id    bigint          NOT NULL REFERENCES torrents (id)
ON DELETE CASCADE ON UPDATE CASCADE
  , contenido         TEXT(500)    NOT NULL
  , comentario_id     bigint          REFERENCES comentarios (id)
ON DELETE NO ACTION ON UPDATE CASCADE
  , created_at        timestamp(0)    NOT NULL DEFAULT localtimestamp
  , updated_at        timestamp(0)
  , deleted           boolean         DEFAULT FALSE
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
    id            bigserial    PRIMARY KEY
  , usuario_id    bigint       NOT NULL REFERENCES "usuarios" (id)
  , created_at    TIMESTAMP(0) DEFAULT  localtimestamp
);



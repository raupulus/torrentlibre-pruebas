CREATE EXTENSION pgcrypto;

---------------------------------------------------
--                     Roles                     --
---------------------------------------------------
INSERT INTO roles (tipo, descripcion) VALUES
    ('basic', 'Usuario básico logueado que puede subir torrents')
  , ('editor', 'Puede moderar, bloquear usuarios y ver estadísticas')
  , ('admin', 'Administrador principal de la aplicación')
;

---------------------------------------------------
--                     TEMAS                     --
---------------------------------------------------
INSERT INTO temas (nombre, descripcion) VALUES
    ('default', 'Tema por defecto con colores neutros')
  , ('redmoon', 'Tema donde predomina el color rojo')
  , ('bluesky', 'Tema donde predomina el color azul claro')
;

---------------------------------------------------
--                  PREFERENCIAS                 --
---------------------------------------------------
INSERT INTO preferencias (tema_id) VALUES
  (1), (2), (3)
;

---------------------------------------------------
--                    Usuarios                   --
---------------------------------------------------
INSERT INTO usuarios_id (rol_id,ip)
VALUES
  (
      3
    , '199.199.199.199'
  )

  , (
      2
    , '199.199.199.200'
)

  , (
      1
    , '199.199.199.201'
)
;

INSERT INTO usuarios (
  id, nombre, web, localidad, provincia, direccion, telefono, biografia,
  fecha_nacimiento, geoloc, sexo, twitter, preferencias_id, password, email,
  nick, auth_key, token
) VALUES
  (
      1
    , 'Administrador'
    , 'https://www.fryntiz.es'
    , 'Chipiona'
    , 'Cádiz'
    , 'Calle Oculta'
    , '000000000'
    , 'Estudiando DAW'
    , '1989/01/01'
    , '0000000000'
    , 'M'
    , '@admin'
    , 1
    , crypt('admin', gen_salt('bf', 13))
    , 'admin@admin.com'
    , 'admin'
    , ''
    , 'temp1'
  )

  , (
      2
    , 'Editor'
    , 'https://www.fryntiz.es'
    , 'Chipiona'
    , 'Cádiz'
    , 'Calle Oculta'
    , '000000001'
    , 'Estudiando DAW'
    , '1989/01/01'
    , '0000000000'
    , 'M'
    , '@editor'
    , 2
    , crypt('1234', gen_salt('bf', 13))
    , 'user1@domain.com'
    , 'editor'
    , ''
    , 'temp2'
  )

  , (
      3
    , 'Pepe'
    , 'https://www.fryntiz.es'
    , 'Chipiona'
    , 'Cádiz'
    , 'Calle Oculta'
    , '000000002'
    , 'Estudiando DAW'
    , '1989/01/01'
    , '0000000000'
    , 'M'
    , '@pepeitor'
    , 3
    , crypt('1234', gen_salt('bf', 13))
    , 'user2@domain.com'
    , 'pepeneitor3000'
    , ''
    , 'temp3'
  )
;


---------------------------------------------------
--                  Licencias                    --
---------------------------------------------------
INSERT INTO licencias (tipo, url, imagen) VALUES
    ('GPL3', 'https://www.gnu.org/licenses/gpl-3.0.html', 'gpl3.png')
  , ('BSD3', 'https://opensource.org/licenses/BSD-3-Clause', 'bsd3.png')
;


---------------------------------------------------
--                  CATEGORÍAS                   --
---------------------------------------------------
INSERT INTO categorias (nombre) VALUES
    ('Máquina virtual')
  , ('Libro')
;

---------------------------------------------------
--                   TORRENTS                    --
---------------------------------------------------
INSERT INTO torrents (licencia_id, categoria_id, usuario_id, titulo, resumen,
                      descripcion,
                      imagen, file, magnet)
VALUES
  (
      1
    , 1
    , 3
    , 'Torrent de prueba 1'
    , 'Descripción corta del torrent de prueba'
    , 'Descripción larga donde se explica a fondo el torrent y su contenido'
    , 'torrent1.jpg'
    , 'torrent1.torrent'
    , 'magnet:xxxxxxxxxxxxxxx'
  )

  , (
      1
    , 2
    , 3
    , 'Torrent de prueba 2'
    , 'Descripción corta del torrent de prueba'
    , 'Descripción larga donde se explica a fondo el torrent y su contenido'
    , 'torrent2.jpg'
    , 'torrent2.torrent'
    , 'magnet:xxxxxxxxxxxxxxy'
  )

  , (
      1
    , 1
    , 3
    , 'Torrent de prueba 3'
    , 'Descripción corta del torrent de prueba'
    , 'Descripción larga donde se explica a fondo el torrent y su contenido'
    , 'torrent3.jpg'
    , 'torrent3.torrent'
    , 'magnet:xxxxxxxxxxxxxxz'
  )
;

---------------------------------------------------
--                 COMENTARIOS                   --
---------------------------------------------------
INSERT INTO comentarios (usuario_id, torrent_id, contenido) VALUES
    (3, 1, 'Este comentario es para decir lo bien que está ese torrent')
  , (3, 1, 'Y sigue subiendo contenido así máquina!')
  , (3, 2, 'Este comentario es para decir lo bien que está ese torrent')
  , (3, 3, 'Este comentario es para decir lo bien que está ese torrent')
;

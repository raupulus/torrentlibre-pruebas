CREATE EXTENSION pgcrypto;

---------------------------------------------------
--                     Roles                     --
---------------------------------------------------
INSERT INTO roles (tipo, descripcion) VALUES
    ('admin', 'Administrador principal de la aplicación')
  , ('editor', 'Puede moderar, bloquear usuarios y ver estadísticas')
  , ('basic', 'Usuario básico logueado que puede subir torrents')
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
INSERT INTO usuarios_datos (
  nombre, nick, web, localidad, provincia, direccion, telefono, biografia,
  fecha_nacimiento, geoloc, sexo, twitter, preferencias_id
) VALUES
  (
      'Administrador'
    , 'admin'
    , 'https://www.fryntiz.es'
    , 'Cádiz'
    , 'Chipiona'
    , 'Calle Oculta'
    , '000000000'
    , 'Estudiando DAW'
    , '1989/01/01'
    , '0000000000'
    , 'M'
    , '@admin'
    , 1
  )

  , (
      'Editor'
    , 'editor'
    , 'https://www.fryntiz.es'
    , 'Cádiz'
    , 'Chipiona'
    , 'Calle Oculta'
    , '000000001'
    , 'Estudiando DAW'
    , '1989/01/01'
    , '0000000000'
    , 'M'
    , '@editor'
    , 2
  )

  , (
      'Pepe'
    , 'pepeitor3000'
    , 'https://www.fryntiz.es'
    , 'Cádiz'
    , 'Chipiona'
    , 'Calle Oculta'
    , '000000002'
    , 'Estudiando DAW'
    , '1989/01/01'
    , '0000000000'
    , 'M'
    , '@pepeitor'
    , 3
  )
;

INSERT INTO usuarios (password, email, auth_key, token, datos_id, rol_id, ip)
VALUES
  (
      crypt('admin', gen_salt('bf', 13))
    , 'admin@admin.com'
    , ''
    , 'temp1'
    , 1
    , 1
    , '199.199.199.199'
  )

  , (
    crypt('1234', gen_salt('bf', 13))
    , 'user1@domain.com'
    , ''
    , 'temp2'
    , 2
    , 2
    , '199.199.199.200'
  )

  , (
    crypt('1234', gen_salt('bf', 13))
    , 'user2@domain.com'
    , ''
    , 'temp3'
    , 3
    , 3
    , '199.199.199.201'
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
--                   TORRENTS                    --
---------------------------------------------------
INSERT INTO torrents (licencia_id, titulo, resumen, descripcion, imagen, file, magnet)
VALUES
  (
      1
    , 'Torrent de prueba 1'
    , 'Descripción corta del torrent de prueba'
    , 'Descripción larga donde se explica a fondo el torrent y su contenido'
    , 'torrent1.jpg'
    , 'torrent1.torrent'
    , 'magnet:xxxxxxxxxxxxxxx'
  )

  , (
    1
    , 'Torrent de prueba 2'
    , 'Descripción corta del torrent de prueba'
    , 'Descripción larga donde se explica a fondo el torrent y su contenido'
    , 'torrent2.jpg'
    , 'torrent2.torrent'
    , 'magnet:xxxxxxxxxxxxxxy'
  )

  , (
    1
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

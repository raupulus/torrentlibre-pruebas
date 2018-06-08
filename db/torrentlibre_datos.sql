-- -*- encoding: utf-8 -*-
-------------------------------------------------------------------------------
--
-- Author:       Raúl Caro Pastorino
-- Email Author: tecnico@fryntiz.es
-- Web Author:   http://www.fryntiz.es
-- github:       https://github.com/fryntiz
-- gitlab:       https://gitlab.com/fryntiz
-- twitter:      https://twitter.com/fryntiz
--
-- Create Date: 2018
-- Project Name: TorrentLibre
-- Description: Sitio web para compartir torrents con licencias libres
--
-- Dependencies: Extensión "pgcrypto" para postgresql
--
-- Revision 0.01 - File Created
-- Additional Comments: Archivo complementario para insertar datos
--
-- Código fuente: https://github.com/fryntiz/torrentlibre
-------------------------------------------------------------------------------
--
-- Copyright (C) 2018  Raúl Caro Pastorino
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>
-------------------------------------------------------------------------------

CREATE EXTENSION pgcrypto;

---------------------------------------------------
--                     Roles                     --
---------------------------------------------------
INSERT INTO roles (tipo, descripcion) VALUES
    ('test', 'Cuenta recién creada, solo puede rellenar el perfil y ver ' ||
              'usuarios')
  , ('editor', 'Puede moderar, bloquear usuarios y ver estadísticas')
  , ('admin', 'Administrador principal de la aplicación')
  , ('especial', 'Designado manualmente por el administrador para colaborar ' ||
                 'en la administración o moderación del sitio')
  , ('novato', 'Cuenta recién creada pero ha verificado su perfil')
  , ('geekv1', 'Ha publicado al menos 10 torrents')
  , ('geekv2', 'Ha publicado al menos 50 torrents')
  , ('geekv3', 'Ha publicado al menos 100 torrents')
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
    , 'http://www.fryntiz.es'
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
    , 'http://www.fryntiz.es'
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
    , 'http://www.fryntiz.es'
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
    ('GPLv3', 'https://www.gnu.org/licenses/gpl-3.0.html', 'gpl3.png')
  , ('BSD-3', 'https://opensource.org/licenses/BSD-3-Clause', 'bsd3.png')
;


---------------------------------------------------
--                  CATEGORÍAS                   --
---------------------------------------------------
INSERT INTO categorias (nombre) VALUES
    ('Máquinas Virtuales')
  , ('Libros')
  , ('Podcasts')
  , ('Apuntes')
  , ('Vídeos')
  , ('PDF')
  , ('Otros')
  , ('Imágenes')
  , ('Cheat Sheet')
  , ('Scripts')
  , ('Sistemas Operativos')
;

---------------------------------------------------
--                   TORRENTS                    --
---------------------------------------------------
INSERT INTO torrents (licencia_id, categoria_id, usuario_id, titulo, resumen,
                      descripcion, imagen, file, size, md5, magnet)
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
    , 1024
    , '1da569f68f3b3c472caafec432c569f0'
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
    , 'torrent1.torrent'
    , 1024
    , '1da569f68f3b3c472caafec432c569f1'
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
    , 'torrent1.torrent'
    , 1024
    , '1da569f68f3b3c472caafec432c569f2'
    , 'magnet:xxxxxxxxxxxxxxz'
  )

  , (
    1
    , 1
    , 3
    , 'Torrent de prueba 4'
    , 'Descripción corta del torrent de prueba'
    , 'Descripción larga donde se explica a fondo el torrent y su contenido'
    , 'torrent4.jpg'
    , 'torrent1.torrent'
    , 1024
    , '1da569f68f3b3c472caafec432c569f3'
    , 'magnet:xxxxxxxxxxxxxxz'
  )

  , (
    1
    , 1
    , 3
    , 'Torrent de prueba 5'
    , 'Descripción corta del torrent de prueba'
    , 'Descripción larga donde se explica a fondo el torrent y su contenido'
    , 'torrent5.jpg'
    , 'torrent1.torrent'
    , 1024
    , '1da569f68f3b3c472caafec432c569f4'
    , 'magnet:xxxxxxxxxxxxxxz'
  )

  , (
    1
    , 1
    , 3
    , 'Torrent de prueba 6'
    , 'Descripción corta del torrent de prueba'
    , 'Descripción larga donde se explica a fondo el torrent y su contenido'
    , 'torrent6.jpg'
    , 'torrent1.torrent'
    , 1024
    , '1da569f68f3b3c472caafec432c569f5'
    , 'magnet:xxxxxxxxxxxxxxz'
  )

  , (
    1
    , 1
    , 3
    , 'Torrent de prueba 7'
    , 'Descripción corta del torrent de prueba'
    , 'Descripción larga donde se explica a fondo el torrent y su contenido'
    , 'torrent7.jpg'
    , 'torrent1.torrent'
    , 1024
    , '1da569f68f3b3c472caafec432c569f6'
    , 'magnet:xxxxxxxxxxxxxxz'
  )

  , (
    1
    , 1
    , 3
    , 'Torrent de prueba 8'
    , 'Descripción corta del torrent de prueba'
    , 'Descripción larga donde se explica a fondo el torrent y su contenido'
    , 'torrent8.jpg'
    , 'torrent1.torrent'
    , 1024
    , '1da569f68f3b3c472caafec432c569f7'
    , 'magnet:xxxxxxxxxxxxxxz'
)

  , (
    1
    , 1
    , 3
    , 'Torrent de prueba 9'
    , 'Descripción corta del torrent de prueba'
    , 'Descripción larga donde se explica a fondo el torrent y su contenido'
    , 'torrent1.jpg'
    , 'torrent1.torrent'
    , 1024
    , '1da569f68f3b3c472caafec432c569f8'
    , 'magnet:xxxxxxxxxxxxxxz'
  )

  , (
    1
    , 1
    , 3
    , 'Torrent de prueba 10'
    , 'Descripción corta del torrent de prueba'
    , 'Descripción larga donde se explica a fondo el torrent y su contenido'
    , 'torrent1.jpg'
    , 'torrent1.torrent'
    , 1024
    , '1da569f68f3b3c472caafec432c569f9'
    , 'magnet:xxxxxxxxxxxxxxz'
  )

  , (
    1
    , 1
    , 3
    , 'Torrent de prueba 11'
    , 'Descripción corta del torrent de prueba'
    , 'Descripción larga donde se explica a fondo el torrent y su contenido'
    , 'torrent1.jpg'
    , 'torrent1.torrent'
    , 1024
    , '1da569f68f3b3c472caafec432c56910'
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

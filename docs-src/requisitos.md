
# Catálogo de requisitos

| **R01**     | **Alta de usuario**           |
| --------------: | :------------------- |
| **Descripción** | Formulario de registro para darse de alta como usuario. El nombre de usuario debe ser único y el email también para poder llevarse a cabo.             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v1             |
| **Incidencia**  | [1](https://github.com/fryntiz/torrentlibre/issues/1) |

| **R02**     | **Baja de usuario**           |
| --------------: | :------------------- |
| **Descripción** | Formulario simple que permite eliminar una cuenta de usuario. El usuario debe estar dentro de la sesión y verificar contraseña.             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v1             |
| **Incidencia**  | [2](https://github.com/fryntiz/torrentlibre/issues/2) |

| **R03**     | **Visualizar Perfil de usuario**           |
| --------------: | :------------------- |
| **Descripción** | Muestra el perfil del usuario y los datos relacionados a este             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v1             |
| **Incidencia**  | [3](https://github.com/fryntiz/torrentlibre/issues/3) |

| **R04**     | **Modificar Perfil Usuario**           |
| --------------: | :------------------- |
| **Descripción** | Permite cambiar los datos personales y la imagen de usuario             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v1             |
| **Incidencia**  | [4](https://github.com/fryntiz/torrentlibre/issues/4) |

| **R05**     | **Confirmar cuenta email**           |
| --------------: | :------------------- |
| **Descripción** | Cuando un usuario es dado de alta podrá acceder a la aplicación pero no compartir contenido ni comentarios hasta verificar el email introducido.             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Difícil         |
| **Entrega**     | v3             |
| **Incidencia**  | [5](https://github.com/fryntiz/torrentlibre/issues/5) |

| **R06**     | **Iniciar Sesión de usuario**           |
| --------------: | :------------------- |
| **Descripción** | Formulario donde introducir el usuario y la contraseña para acceder a la aplicación.             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | V1             |
| **Incidencia**  | [6](https://github.com/fryntiz/torrentlibre/issues/6) |

| **R07**     | **Cerrar Sesión de usuario**           |
| --------------: | :------------------- |
| **Descripción** | Permite cerrar una sesión abierta en el navegador actual. Automáticamente se volverá al sitio principal.             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | V1             |
| **Incidencia**  | [7](https://github.com/fryntiz/torrentlibre/issues/7) |

| **R08**     | **Check para recordar sesión activa**           |
| --------------: | :------------------- |
| **Descripción** | Permite marcar una casilla en la misma ventana de login para recordar la sesión durante 30 días en el navegador. A los 30 días expirará la sesión y se deberá volver a iniciar.             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | V1             |
| **Incidencia**  | [8](https://github.com/fryntiz/torrentlibre/issues/8) |

| **R09**     | **Restablecer contraseña por email**           |
| --------------: | :------------------- |
| **Descripción** | Añadir opción por si se olvida la contraseña que permita recuperarla a través de un correo.             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Difícil         |
| **Entrega**     | v3             |
| **Incidencia**  | [9](https://github.com/fryntiz/torrentlibre/issues/9) |

| **R10**     | **Confirmar Baja de usuario por email**           |
| --------------: | :------------------- |
| **Descripción** | Se enviará un correo de confirmación para autenticar al usuario además de haber pedido con anterioridad la contraseña.             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [10](https://github.com/fryntiz/torrentlibre/issues/10) |

| **R11**     | **Avatar de usuario**           |
| --------------: | :------------------- |
| **Descripción** | Cada usuario puede tener un avatar, en caso de no ser seleccionado se otorga el que existe por defecto.             |
| **Prioridad**   | Mínimo           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v2             |
| **Incidencia**  | [11](https://github.com/fryntiz/torrentlibre/issues/11) |

| **R12**     | **Cambiar contraseña de usuario**           |
| --------------: | :------------------- |
| **Descripción** | Los usuarios pueden cambiar su propia contraseña             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v1             |
| **Incidencia**  | [12](https://github.com/fryntiz/torrentlibre/issues/12) |

| **R13**     | **Bloquear acceso a un usuario**           |
| --------------: | :------------------- |
| **Descripción** | Los usuarios marcados como bloqueado no podrán volver a iniciar sesión             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [13](https://github.com/fryntiz/torrentlibre/issues/13) |

| **R14**     | **Bloquear acceso a una IP**           |
| --------------: | :------------------- |
| **Descripción** | Las IP que se hayan marcado como bloqueadas no podrán volver a iniciar sesión             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [14](https://github.com/fryntiz/torrentlibre/issues/14) |

| **R15**     | **Mostrar torrent totales de un usuario al ver su perfil**           |
| --------------: | :------------------- |
| **Descripción** | En la vista del usuario muestra la cantidad de torrent totales             |
| **Prioridad**   | Mínimo           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v2             |
| **Incidencia**  | [15](https://github.com/fryntiz/torrentlibre/issues/15) |

| **R16**     | **Cuando un usuario es borrado recibe un correo**           |
| --------------: | :------------------- |
| **Descripción** | Envia correo al usuario cuando este se borra             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Difícil         |
| **Entrega**     | v3             |
| **Incidencia**  | [16](https://github.com/fryntiz/torrentlibre/issues/16) |

| **R17**     | **Buscar usuario por nick**           |
| --------------: | :------------------- |
| **Descripción** | Se pueden buscar usuarios por el nick/apodo que usan             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v1             |
| **Incidencia**  | [17](https://github.com/fryntiz/torrentlibre/issues/17) |

| **R18**     | **Enviar emails con noticias**           |
| --------------: | :------------------- |
| **Descripción** | Permite enviar emails a los suscritos en la aplicación             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Difícil         |
| **Entrega**     | v2             |
| **Incidencia**  | [18](https://github.com/fryntiz/torrentlibre/issues/18) |

| **R19**     | **Darse de baja a los emails**           |
| --------------: | :------------------- |
| **Descripción** | Posibilidad de continuar con la cuenta, pero sin recibir emails             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Difícil         |
| **Entrega**     | v3             |
| **Incidencia**  | [19](https://github.com/fryntiz/torrentlibre/issues/19) |

| **R20**     | **Crear Roles de usuarios**           |
| --------------: | :------------------- |
| **Descripción** | Crear distintos roles con permisos diferentes para cada usuario: - nuevo → Cuenta recién creada, solo puede rellenar su perfil. - novato → Cuenta creada recientemente pero ha verificado su email. - geekv1 → Ha publicado 10 torrents - geekv2 → Ha publicado 50 torrents - geekv3 → Ha publicado 100 torrents - especial → Designado manualmente por el administrador para colaborar en la administración o moderación del sitio.             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Difícil         |
| **Entrega**     | v2             |
| **Incidencia**  | [20](https://github.com/fryntiz/torrentlibre/issues/20) |

| **R21**     | **Crear Rol administrador**           |
| --------------: | :------------------- |
| **Descripción** | El rol administrador designado al usuario “master” será quien tendrá los máximos permisos de administración del sitio y podrá efectuar cualquier operación en cualquier momento.             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v2             |
| **Incidencia**  | [21](https://github.com/fryntiz/torrentlibre/issues/21) |

| **R22**     | **Crear categorías de torrents**           |
| --------------: | :------------------- |
| **Descripción** | Los torrents tendrán que pertenecer obligatoriamente a una de estas categorías preestablecidas.  Los usuarios no podrán crear más categorías. Las categorías son las siguientes: - Máquinas Virtuales - Libros             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v1             |
| **Incidencia**  | [22](https://github.com/fryntiz/torrentlibre/issues/22) |

| **R23**     | **Agregar torrent**           |
| --------------: | :------------------- |
| **Descripción** | Formulario que solicita los datos básicos del torrent y subirlo. Es obligatorio una categoría de torrent y una descripción. En el caso de que el torrent sea idéntico a otro existente en la BD se denegará compartirlo. Se desea conocer: - Nombre - Descripción corta - Descripción larga - Imagen - Quien lo sube - Categoría - Fecha de creación - Tamaño - Compresión - Contraseña (Se desaconseja usar) - Licencia             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v1             |
| **Incidencia**  | [23](https://github.com/fryntiz/torrentlibre/issues/23) |

| **R24**     | **Generar suma de comprobación al torrent**           |
| --------------: | :------------------- |
| **Descripción** | Auto generar una suma de comprobación al torrent subido. Este dato también será almacenado. Se mostrará cuando se visualice el torrent.             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Difícil         |
| **Entrega**     | v2             |
| **Incidencia**  | [24](https://github.com/fryntiz/torrentlibre/issues/24) |

| **R25**     | **Añadir imagen a Torrent**           |
| --------------: | :------------------- |
| **Descripción** | Permite subir una imagen para relacionarla con el torrent. Recomendado 300x300px proporciones 1:1 y no superar 500KB             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v2             |
| **Incidencia**  | [25](https://github.com/fryntiz/torrentlibre/issues/25) |

| **R26**     | **Visualizar Torrent**           |
| --------------: | :------------------- |
| **Descripción** | Antes de ser descargado abrir una página dedicada al torrent mostrando información completa sobre este. No podrá eliminarse ni modificarse.             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v1             |
| **Incidencia**  | [26](https://github.com/fryntiz/torrentlibre/issues/26) |

| **R27**     | **Reportar Torrent **           |
| --------------: | :------------------- |
| **Descripción** | Reportar torrent con uso indebido llevando a un formulario de envío para describir por qué cree que no es correcto.             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Difícil         |
| **Entrega**     | v3             |
| **Incidencia**  | [27](https://github.com/fryntiz/torrentlibre/issues/27) |

| **R28**     | **Modificar Torrent**           |
| --------------: | :------------------- |
| **Descripción** | Solo el creador y los administradores pueden modificar directamente un torrent. El resto de usuarios puede, a través de un formulario, solicitar una modificación que llegará a un administrador.             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v2             |
| **Incidencia**  | [28](https://github.com/fryntiz/torrentlibre/issues/28) |

| **R29**     | **Sistema de puntuación de torrents**           |
| --------------: | :------------------- |
| **Descripción** | Se podrá puntuar los torrents en una escala 0-10. Mostrará la media obtenida junto al torrent.             |
| **Prioridad**   | Mínimo           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v3             |
| **Incidencia**  | [29](https://github.com/fryntiz/torrentlibre/issues/29) |

| **R30**     | **Busquedas de torrents**           |
| --------------: | :------------------- |
| **Descripción** | Búsqueda paginada de torrents por categoría y nombre.             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v1             |
| **Incidencia**  | [30](https://github.com/fryntiz/torrentlibre/issues/30) |

| **R31**     | **Mostrar veces que se ha pulsado descargar un torrent**           |
| --------------: | :------------------- |
| **Descripción** | Cada vez que se pulsa un torrent se registra y cuando se visualiza este se muestra la cantidad de veces que se ha descargado.             |
| **Prioridad**   | Mínimo           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v2             |
| **Incidencia**  | [31](https://github.com/fryntiz/torrentlibre/issues/31) |

| **R32**     | **Descargar Torrent**           |
| --------------: | :------------------- |
| **Descripción** | Al pulsar comenzará la descarga del archivo torrent             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v1             |
| **Incidencia**  | [32](https://github.com/fryntiz/torrentlibre/issues/32) |

| **R33**     | **Copiar enlace Magnet al portapapeles**           |
| --------------: | :------------------- |
| **Descripción** | Al pulsar sobre un icono, se copiará automáticamente el enlace al portapapeles del sistema operativo             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v2             |
| **Incidencia**  | [33](https://github.com/fryntiz/torrentlibre/issues/33) |

| **R34**     | **Almacenar cantidad de semillas**           |
| --------------: | :------------------- |
| **Descripción** | Se almacena la cantidad de usuarios que comparten el recurso torrent.  Para actualizar este valor primero comprobará que lleva más de un día desde la última comprobación, como esto valores estarán guardados (ultima comprobación de seed y cantidad de seed) en la misma tabla de torrents no genera esfuerzo extra.  La comprobación de semillas se llevará a cabo cuando un usuario acceda a visualizar el torrent para su descarga, de forma que no se hará constantemente ni tampoco sobre torrents que nadie use.             |
| **Prioridad**   | Mínimo           |
| **Tipo**        | Funcional                |
| **Complejidad** | Difícil         |
| **Entrega**     | v3             |
| **Incidencia**  | [34](https://github.com/fryntiz/torrentlibre/issues/34) |

| **R35**     | **Reportar torrent caído.**           |
| --------------: | :------------------- |
| **Descripción** | El reporte llegará a los administradores y moderadores. Además también llegará al usuario que subió en un principio el torrent.             |
| **Prioridad**   | Mínimo           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [35](https://github.com/fryntiz/torrentlibre/issues/35) |

| **R36**     | **Crear un comentario**           |
| --------------: | :------------------- |
| **Descripción** | En un torrent se puede generar un comentario sobre el mismo, quedando el más reciente al principio.  Además será paginado en 10 comentario por cada página.             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v2             |
| **Incidencia**  | [36](https://github.com/fryntiz/torrentlibre/issues/36) |

| **R37**     | **Modificar Comentario**           |
| --------------: | :------------------- |
| **Descripción** | Permite modificar comentarios propios             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v2             |
| **Incidencia**  | [37](https://github.com/fryntiz/torrentlibre/issues/37) |

| **R38**     | **Eliminar Comentario**           |
| --------------: | :------------------- |
| **Descripción** | Permite eliminar comentarios propios             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v2             |
| **Incidencia**  | [38](https://github.com/fryntiz/torrentlibre/issues/38) |

| **R39**     | **Reportar Comentario**           |
| --------------: | :------------------- |
| **Descripción** | Un usuario puede marcar un comentario para reportarlo solo una vez. Esto envía una notificación a un administrdor/moderador             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Difícil         |
| **Entrega**     | v3             |
| **Incidencia**  | [39](https://github.com/fryntiz/torrentlibre/issues/39) |

| **R40**     | **Votar Positivo un comentario**           |
| --------------: | :------------------- |
| **Descripción** | Los comentarios se pueden votar positivo             |
| **Prioridad**   | Mínimo           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [40](https://github.com/fryntiz/torrentlibre/issues/40) |

| **R41**     | **Votar Negativo un comentario**           |
| --------------: | :------------------- |
| **Descripción** | Los comentarios se pueden votar negativo             |
| **Prioridad**   | Mínimo           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [41](https://github.com/fryntiz/torrentlibre/issues/41) |

| **R42**     | **Visualizar comentarios asociados a un torrent**           |
| --------------: | :------------------- |
| **Descripción** | Cuando se visualiza un torrent aparecerán debajo del mismo los últimos 10 comentarios realizados             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v2             |
| **Incidencia**  | [42](https://github.com/fryntiz/torrentlibre/issues/42) |

| **R43**     | **Ordenar comentarios**           |
| --------------: | :------------------- |
| **Descripción** | Permite ordenar comentarios por: - Fecha - Usuarios - Importancia según votos             |
| **Prioridad**   | Mínimo           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [43](https://github.com/fryntiz/torrentlibre/issues/43) |

| **R44**     | **Los comentarios no pueden superar los 500 caracteres**           |
| --------------: | :------------------- |
| **Descripción** | Los comentarios no pueden extenderse más de 500 caracteres             |
| **Prioridad**   | Mínimo           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v2             |
| **Incidencia**  | [44](https://github.com/fryntiz/torrentlibre/issues/44) |

| **R45**     | **Solo se permite 1 comentario cada 5 minutos**           |
| --------------: | :------------------- |
| **Descripción** | Un usuario no podrá realizar comentarios seguidos dentro del tiempo indicado (5 minutos en principio)             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v3             |
| **Incidencia**  | [45](https://github.com/fryntiz/torrentlibre/issues/45) |

| **R46**     | **Validar HTML5**           |
| --------------: | :------------------- |
| **Descripción** | Utilizar HMTL correctamente cumpliendo estándares W3C             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [46](https://github.com/fryntiz/torrentlibre/issues/46) |

| **R47**     | **Validar CSS3**           |
| --------------: | :------------------- |
| **Descripción** | Utilizar CSS correctamente cumpliendo estándares W3C             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [47](https://github.com/fryntiz/torrentlibre/issues/47) |

| **R48**     | **Validar modularidad**           |
| --------------: | :------------------- |
| **Descripción** | Asegurar que la aplicación es modular permitiendo reemplazar fácilmente alguna de sus partes o reutilizarla en otro proyecto             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [48](https://github.com/fryntiz/torrentlibre/issues/48) |

| **R49**     | **Validar Accesibilidad**           |
| --------------: | :------------------- |
| **Descripción** | Mínimas reglas de accesibilidad cumplida             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [49](https://github.com/fryntiz/torrentlibre/issues/49) |

| **R50**     | **Validar Formularios desde Servidor**           |
| --------------: | :------------------- |
| **Descripción** | Validar los formularios recibidos en el servidor sin tener en cuenta si ya se han validado en el usuario/cliente             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [50](https://github.com/fryntiz/torrentlibre/issues/50) |

| **R51**     | **Validar Formularios desde Cliente**           |
| --------------: | :------------------- |
| **Descripción** | Validar los formularios antes de ser enviados, por el navegador usuario/cliente             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [51](https://github.com/fryntiz/torrentlibre/issues/51) |

| **R52**     | **Utilizar AJAX**           |
| --------------: | :------------------- |
| **Descripción** | Añadir funcionalidades que hagan uso de Ajax             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [52](https://github.com/fryntiz/torrentlibre/issues/52) |

| **R53**     | **Utilizar jQuery**           |
| --------------: | :------------------- |
| **Descripción** | Añadir funcionalidades que hagan uso de jQuery             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [53](https://github.com/fryntiz/torrentlibre/issues/53) |

| **R54**     | **Visualizar maquetación en distintos navegadores web**           |
| --------------: | :------------------- |
| **Descripción** | Comprobar que cada elemento se encuentra en el lugar que corresponde al ser visualizado en distintos navegadores             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [54](https://github.com/fryntiz/torrentlibre/issues/54) |

| **R55**     | **Visualizar diseño en distintos navegadores web**           |
| --------------: | :------------------- |
| **Descripción** | Comprobar que la visualización de la aplicación es aceptable en distintos navegadores conocidos y más utilizados como: - Firefox - Firefox-ESR - Chromium - Chrome - Safari - Opera - Epyphany - Falkon - Google Browser (Android)             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [55](https://github.com/fryntiz/torrentlibre/issues/55) |

| **R56**     | **Desplegar Aplicación en local**           |
| --------------: | :------------------- |
| **Descripción** | Desplegar la aplicación en local simulando produción (sin desarrollo para probarla y someterla a tests)             |
| **Prioridad**   | Mínimo           |
| **Tipo**        | Técnico                |
| **Complejidad** | Fácil         |
| **Entrega**     | v3             |
| **Incidencia**  | [56](https://github.com/fryntiz/torrentlibre/issues/56) |

| **R57**     | **Desplegar la aplicación en cloud**           |
| --------------: | :------------------- |
| **Descripción** | Subir y desplegar la aplicación en un servidor remoto para producción             |
| **Prioridad**   | Importante           |
| **Tipo**        | Técnico                |
| **Complejidad** | Fácil         |
| **Entrega**     | v3             |
| **Incidencia**  | [57](https://github.com/fryntiz/torrentlibre/issues/57) |

| **R58**     | **Mostrar en un lateral torrents mejor valorados**           |
| --------------: | :------------------- |
| **Descripción** | Los 5 torrents con más puntuación se verán en el lateral siendo accesibles con un click             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v2             |
| **Incidencia**  | [58](https://github.com/fryntiz/torrentlibre/issues/58) |

| **R59**     | **Mostrar últimos comentarios en lateral**           |
| --------------: | :------------------- |
| **Descripción** | Los 5 últimos comentarios se mostrarán en el menú lateral             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v2             |
| **Incidencia**  | [59](https://github.com/fryntiz/torrentlibre/issues/59) |

| **R60**     | **Registrar accesos en BD**           |
| --------------: | :------------------- |
| **Descripción** | Cada vez que un usuario accede (crea una nueva sesión) al sitio web se registra su dirección ip, si está logueado lo asocia a dicho usuario             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [60](https://github.com/fryntiz/torrentlibre/issues/60) |

| **R61**     | **Estadísticas Cantidad de descargas totales**           |
| --------------: | :------------------- |
| **Descripción** | Dibuja en una gráfica el total de descargas de torrents por agregación al mes             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v3             |
| **Incidencia**  | [61](https://github.com/fryntiz/torrentlibre/issues/61) |

| **R62**     | **Estadísticas Cantidad de usuarios totales**           |
| --------------: | :------------------- |
| **Descripción** | Dibuja en una gráfica la estadística con la cantidad de usuarios totales por agregación al mes             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v3             |
| **Incidencia**  | [62](https://github.com/fryntiz/torrentlibre/issues/62) |

| **R63**     | **Estadísticas Cantidad de torrents totales**           |
| --------------: | :------------------- |
| **Descripción** | Dibuja en una gráfica la estadística con el total de torrent totales por agregación al mes             |
| **Prioridad**   | Importante           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v3             |
| **Incidencia**  | [63](https://github.com/fryntiz/torrentlibre/issues/63) |

| **R64**     | **Exportar estadísticas a CSV**           |
| --------------: | :------------------- |
| **Descripción** | Estadísticas como la cantidad de usuarios, cantidad de torrents, descargas totales… podrán ser exportadas a un archivo CSV por un administrador             |
| **Prioridad**   | Mínimo           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [64](https://github.com/fryntiz/torrentlibre/issues/64) |

| **R65**     | **Enviar estadísticas por email**           |
| --------------: | :------------------- |
| **Descripción** | Las estadísticas serán enviadas mensualmente por email o manualmente pulsando sobre dicha acción             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Difícil         |
| **Entrega**     | v3             |
| **Incidencia**  | [65](https://github.com/fryntiz/torrentlibre/issues/65) |

| **R66**     | **Exportar estadísticas a PDF**           |
| --------------: | :------------------- |
| **Descripción** | Estadísticas como la cantidad de usuarios, cantidad de torrents, descargas totales… podrán ser exportadas a un archivo PDF por un administrador             |
| **Prioridad**   | Mínimo           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [66](https://github.com/fryntiz/torrentlibre/issues/66) |

| **R67**     | **Login Google+**           |
| --------------: | :------------------- |
| **Descripción** | Permite acceder a la aplicación mediante cuenta de Google+             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Difícil         |
| **Entrega**     | v3             |
| **Incidencia**  | [67](https://github.com/fryntiz/torrentlibre/issues/67) |

| **R68**     | **Login Facebook**           |
| --------------: | :------------------- |
| **Descripción** | Permite acceder a la aplicación mediante cuenta de Facebook             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Difícil         |
| **Entrega**     | v3             |
| **Incidencia**  | [68](https://github.com/fryntiz/torrentlibre/issues/68) |

| **R69**     | **Asociar con API Twitter para crear bot automatizado**           |
| --------------: | :------------------- |
| **Descripción** | Asociar con la API de twitter para desarrolladores e integrar con un bot la aplicación de forma que cada hora publique automáticamente un resumen de la actividad: - Últimas subidas → enlace y titulos más descargados - Lo más descargado del mes → enlace y títulos             |
| **Prioridad**   | Mínimo           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [69](https://github.com/fryntiz/torrentlibre/issues/69) |

| **R70**     | **Asociar con API Telegram para crear bot automatizado**           |
| --------------: | :------------------- |
| **Descripción** | Asociar con la API de telegram para crear un bot que publique en un canal de forma automatizada los mismos resúmenes a cada hora.             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v3             |
| **Incidencia**  | [70](https://github.com/fryntiz/torrentlibre/issues/70) |

| **R71**     | **Exportar BD en plano**           |
| --------------: | :------------------- |
| **Descripción** | Permite al administrador exportar la BD completa en texto plano             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v3             |
| **Incidencia**  | [71](https://github.com/fryntiz/torrentlibre/issues/71) |

| **R72**     | **Exportar BD en CSV**           |
| --------------: | :------------------- |
| **Descripción** | Permite al administrador exportar la BD completa en formato CSV             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v3             |
| **Incidencia**  | [72](https://github.com/fryntiz/torrentlibre/issues/72) |

| **R73**     | **Bloquear posibles torrents peligrosos**           |
| --------------: | :------------------- |
| **Descripción** | Detectar si el archivo que hace referencia el torrent es peligroso o incumple las políticas del sitio. En principio esto es difícil de lograr y se filtrará extensiones para bloquear formatos de vídeo y binarios como: mp4,avi,flv,bat,exe…             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Difícil         |
| **Entrega**     | v3             |
| **Incidencia**  | [73](https://github.com/fryntiz/torrentlibre/issues/73) |

| **R74**     | **Integrar torrents en trackers**           |
| --------------: | :------------------- |
| **Descripción** | Decirle a trackers importantes que existe cada torrent almacenado en el sitio             |
| **Prioridad**   | Opcional           |
| **Tipo**        | Funcional                |
| **Complejidad** | Difícil         |
| **Entrega**     | v3             |
| **Incidencia**  | [74](https://github.com/fryntiz/torrentlibre/issues/74) |

| **R75**     | **Sistema de licencias**           |
| --------------: | :------------------- |
| **Descripción** | Implementar sistema de licencias que se muestre al visualizar un torrent, para conocer la licencia que dispone el archivo que vamos a descargar.             |
| **Prioridad**   | Mínimo           |
| **Tipo**        | Funcional                |
| **Complejidad** | Fácil         |
| **Entrega**     | v3             |
| **Incidencia**  | [75](https://github.com/fryntiz/torrentlibre/issues/75) |

| **R76**     | **Demanda de torrent**           |
| --------------: | :------------------- |
| **Descripción** | Crear apartado donde los usuarios puedan demandar un torrent específico que aún no haya sido subido a la plataforma             |
| **Prioridad**   | Mínimo           |
| **Tipo**        | Funcional                |
| **Complejidad** | Media         |
| **Entrega**     | v2             |
| **Incidencia**  | [76](https://github.com/fryntiz/torrentlibre/issues/76) |


## Cuadro resumen

| **Requisito** | **Prioridad** | **Tipo** | **Complejidad** | **Entrega** | **Incidencia** |
| :------------ | :-----------: | :------: | :-------------: | :---------: | :------------: |
| (**R01**) Alta de usuario | Importante | Funcional | Fácil | v1 | [1](https://github.com/fryntiz/torrentlibre/issues/1) |
| (**R02**) Baja de usuario | Importante | Funcional | Fácil | v1 | [2](https://github.com/fryntiz/torrentlibre/issues/2) |
| (**R03**) Visualizar Perfil de usuario | Importante | Funcional | Fácil | v1 | [3](https://github.com/fryntiz/torrentlibre/issues/3) |
| (**R04**) Modificar Perfil Usuario | Importante | Funcional | Media | v1 | [4](https://github.com/fryntiz/torrentlibre/issues/4) |
| (**R05**) Confirmar cuenta email | Opcional | Funcional | Difícil | v3 | [5](https://github.com/fryntiz/torrentlibre/issues/5) |
| (**R06**) Iniciar Sesión de usuario | Importante | Funcional | Fácil | V1 | [6](https://github.com/fryntiz/torrentlibre/issues/6) |
| (**R07**) Cerrar Sesión de usuario | Importante | Funcional | Fácil | V1 | [7](https://github.com/fryntiz/torrentlibre/issues/7) |
| (**R08**) Check para recordar sesión activa | Opcional | Funcional | Fácil | V1 | [8](https://github.com/fryntiz/torrentlibre/issues/8) |
| (**R09**) Restablecer contraseña por email | Opcional | Funcional | Difícil | v3 | [9](https://github.com/fryntiz/torrentlibre/issues/9) |
| (**R10**) Confirmar Baja de usuario por email | Opcional | Funcional | Media | v3 | [10](https://github.com/fryntiz/torrentlibre/issues/10) |
| (**R11**) Avatar de usuario | Mínimo | Funcional | Media | v2 | [11](https://github.com/fryntiz/torrentlibre/issues/11) |
| (**R12**) Cambiar contraseña de usuario | Importante | Funcional | Fácil | v1 | [12](https://github.com/fryntiz/torrentlibre/issues/12) |
| (**R13**) Bloquear acceso a un usuario | Opcional | Funcional | Media | v3 | [13](https://github.com/fryntiz/torrentlibre/issues/13) |
| (**R14**) Bloquear acceso a una IP | Opcional | Funcional | Media | v3 | [14](https://github.com/fryntiz/torrentlibre/issues/14) |
| (**R15**) Mostrar torrent totales de un usuario al ver su perfil | Mínimo | Funcional | Media | v2 | [15](https://github.com/fryntiz/torrentlibre/issues/15) |
| (**R16**) Cuando un usuario es borrado recibe un correo | Opcional | Funcional | Difícil | v3 | [16](https://github.com/fryntiz/torrentlibre/issues/16) |
| (**R17**) Buscar usuario por nick | Importante | Funcional | Fácil | v1 | [17](https://github.com/fryntiz/torrentlibre/issues/17) |
| (**R18**) Enviar emails con noticias | Opcional | Funcional | Difícil | v2 | [18](https://github.com/fryntiz/torrentlibre/issues/18) |
| (**R19**) Darse de baja a los emails | Opcional | Funcional | Difícil | v3 | [19](https://github.com/fryntiz/torrentlibre/issues/19) |
| (**R20**) Crear Roles de usuarios | Importante | Funcional | Difícil | v2 | [20](https://github.com/fryntiz/torrentlibre/issues/20) |
| (**R21**) Crear Rol administrador | Importante | Funcional | Media | v2 | [21](https://github.com/fryntiz/torrentlibre/issues/21) |
| (**R22**) Crear categorías de torrents | Importante | Funcional | Fácil | v1 | [22](https://github.com/fryntiz/torrentlibre/issues/22) |
| (**R23**) Agregar torrent | Importante | Funcional | Fácil | v1 | [23](https://github.com/fryntiz/torrentlibre/issues/23) |
| (**R24**) Generar suma de comprobación al torrent | Importante | Funcional | Difícil | v2 | [24](https://github.com/fryntiz/torrentlibre/issues/24) |
| (**R25**) Añadir imagen a Torrent | Importante | Funcional | Fácil | v2 | [25](https://github.com/fryntiz/torrentlibre/issues/25) |
| (**R26**) Visualizar Torrent | Importante | Funcional | Fácil | v1 | [26](https://github.com/fryntiz/torrentlibre/issues/26) |
| (**R27**) Reportar Torrent  | Opcional | Funcional | Difícil | v3 | [27](https://github.com/fryntiz/torrentlibre/issues/27) |
| (**R28**) Modificar Torrent | Importante | Funcional | Media | v2 | [28](https://github.com/fryntiz/torrentlibre/issues/28) |
| (**R29**) Sistema de puntuación de torrents | Mínimo | Funcional | Fácil | v3 | [29](https://github.com/fryntiz/torrentlibre/issues/29) |
| (**R30**) Busquedas de torrents | Importante | Funcional | Fácil | v1 | [30](https://github.com/fryntiz/torrentlibre/issues/30) |
| (**R31**) Mostrar veces que se ha pulsado descargar un torrent | Mínimo | Funcional | Fácil | v2 | [31](https://github.com/fryntiz/torrentlibre/issues/31) |
| (**R32**) Descargar Torrent | Importante | Funcional | Fácil | v1 | [32](https://github.com/fryntiz/torrentlibre/issues/32) |
| (**R33**) Copiar enlace Magnet al portapapeles | Importante | Funcional | Media | v2 | [33](https://github.com/fryntiz/torrentlibre/issues/33) |
| (**R34**) Almacenar cantidad de semillas | Mínimo | Funcional | Difícil | v3 | [34](https://github.com/fryntiz/torrentlibre/issues/34) |
| (**R35**) Reportar torrent caído. | Mínimo | Funcional | Media | v3 | [35](https://github.com/fryntiz/torrentlibre/issues/35) |
| (**R36**) Crear un comentario | Importante | Funcional | Media | v2 | [36](https://github.com/fryntiz/torrentlibre/issues/36) |
| (**R37**) Modificar Comentario | Importante | Funcional | Media | v2 | [37](https://github.com/fryntiz/torrentlibre/issues/37) |
| (**R38**) Eliminar Comentario | Importante | Funcional | Media | v2 | [38](https://github.com/fryntiz/torrentlibre/issues/38) |
| (**R39**) Reportar Comentario | Opcional | Funcional | Difícil | v3 | [39](https://github.com/fryntiz/torrentlibre/issues/39) |
| (**R40**) Votar Positivo un comentario | Mínimo | Funcional | Media | v3 | [40](https://github.com/fryntiz/torrentlibre/issues/40) |
| (**R41**) Votar Negativo un comentario | Mínimo | Funcional | Media | v3 | [41](https://github.com/fryntiz/torrentlibre/issues/41) |
| (**R42**) Visualizar comentarios asociados a un torrent | Importante | Funcional | Fácil | v2 | [42](https://github.com/fryntiz/torrentlibre/issues/42) |
| (**R43**) Ordenar comentarios | Mínimo | Funcional | Media | v3 | [43](https://github.com/fryntiz/torrentlibre/issues/43) |
| (**R44**) Los comentarios no pueden superar los 500 caracteres | Mínimo | Funcional | Fácil | v2 | [44](https://github.com/fryntiz/torrentlibre/issues/44) |
| (**R45**) Solo se permite 1 comentario cada 5 minutos | Importante | Funcional | Fácil | v3 | [45](https://github.com/fryntiz/torrentlibre/issues/45) |
| (**R46**) Validar HTML5 | Importante | Funcional | Media | v3 | [46](https://github.com/fryntiz/torrentlibre/issues/46) |
| (**R47**) Validar CSS3 | Importante | Funcional | Media | v3 | [47](https://github.com/fryntiz/torrentlibre/issues/47) |
| (**R48**) Validar modularidad | Importante | Funcional | Media | v3 | [48](https://github.com/fryntiz/torrentlibre/issues/48) |
| (**R49**) Validar Accesibilidad | Importante | Funcional | Media | v3 | [49](https://github.com/fryntiz/torrentlibre/issues/49) |
| (**R50**) Validar Formularios desde Servidor | Importante | Funcional | Media | v3 | [50](https://github.com/fryntiz/torrentlibre/issues/50) |
| (**R51**) Validar Formularios desde Cliente | Importante | Funcional | Media | v3 | [51](https://github.com/fryntiz/torrentlibre/issues/51) |
| (**R52**) Utilizar AJAX | Importante | Funcional | Media | v3 | [52](https://github.com/fryntiz/torrentlibre/issues/52) |
| (**R53**) Utilizar jQuery | Importante | Funcional | Media | v3 | [53](https://github.com/fryntiz/torrentlibre/issues/53) |
| (**R54**) Visualizar maquetación en distintos navegadores web | Importante | Funcional | Media | v3 | [54](https://github.com/fryntiz/torrentlibre/issues/54) |
| (**R55**) Visualizar diseño en distintos navegadores web | Importante | Funcional | Media | v3 | [55](https://github.com/fryntiz/torrentlibre/issues/55) |
| (**R56**) Desplegar Aplicación en local | Mínimo | Técnico | Fácil | v3 | [56](https://github.com/fryntiz/torrentlibre/issues/56) |
| (**R57**) Desplegar la aplicación en cloud | Importante | Técnico | Fácil | v3 | [57](https://github.com/fryntiz/torrentlibre/issues/57) |
| (**R58**) Mostrar en un lateral torrents mejor valorados | Opcional | Funcional | Fácil | v2 | [58](https://github.com/fryntiz/torrentlibre/issues/58) |
| (**R59**) Mostrar últimos comentarios en lateral | Importante | Funcional | Fácil | v2 | [59](https://github.com/fryntiz/torrentlibre/issues/59) |
| (**R60**) Registrar accesos en BD | Opcional | Funcional | Media | v3 | [60](https://github.com/fryntiz/torrentlibre/issues/60) |
| (**R61**) Estadísticas Cantidad de descargas totales | Importante | Funcional | Fácil | v3 | [61](https://github.com/fryntiz/torrentlibre/issues/61) |
| (**R62**) Estadísticas Cantidad de usuarios totales | Importante | Funcional | Fácil | v3 | [62](https://github.com/fryntiz/torrentlibre/issues/62) |
| (**R63**) Estadísticas Cantidad de torrents totales | Importante | Funcional | Fácil | v3 | [63](https://github.com/fryntiz/torrentlibre/issues/63) |
| (**R64**) Exportar estadísticas a CSV | Mínimo | Funcional | Media | v3 | [64](https://github.com/fryntiz/torrentlibre/issues/64) |
| (**R65**) Enviar estadísticas por email | Opcional | Funcional | Difícil | v3 | [65](https://github.com/fryntiz/torrentlibre/issues/65) |
| (**R66**) Exportar estadísticas a PDF | Mínimo | Funcional | Media | v3 | [66](https://github.com/fryntiz/torrentlibre/issues/66) |
| (**R67**) Login Google+ | Opcional | Funcional | Difícil | v3 | [67](https://github.com/fryntiz/torrentlibre/issues/67) |
| (**R68**) Login Facebook | Opcional | Funcional | Difícil | v3 | [68](https://github.com/fryntiz/torrentlibre/issues/68) |
| (**R69**) Asociar con API Twitter para crear bot automatizado | Mínimo | Funcional | Media | v3 | [69](https://github.com/fryntiz/torrentlibre/issues/69) |
| (**R70**) Asociar con API Telegram para crear bot automatizado | Opcional | Funcional | Media | v3 | [70](https://github.com/fryntiz/torrentlibre/issues/70) |
| (**R71**) Exportar BD en plano | Opcional | Funcional | Fácil | v3 | [71](https://github.com/fryntiz/torrentlibre/issues/71) |
| (**R72**) Exportar BD en CSV | Opcional | Funcional | Fácil | v3 | [72](https://github.com/fryntiz/torrentlibre/issues/72) |
| (**R73**) Bloquear posibles torrents peligrosos | Opcional | Funcional | Difícil | v3 | [73](https://github.com/fryntiz/torrentlibre/issues/73) |
| (**R74**) Integrar torrents en trackers | Opcional | Funcional | Difícil | v3 | [74](https://github.com/fryntiz/torrentlibre/issues/74) |
| (**R75**) Sistema de licencias | Mínimo | Funcional | Fácil | v3 | [75](https://github.com/fryntiz/torrentlibre/issues/75) |
| (**R76**) Demanda de torrent | Mínimo | Funcional | Media | v2 | [76](https://github.com/fryntiz/torrentlibre/issues/76) |

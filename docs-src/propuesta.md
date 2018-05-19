% Compartir Torrents Libres "TorrentLibre"
% Raúl Caro Pastorino
% Curso 2017/18

# Descripción general del proyecto
El objetivo principal de esta aplicación es crear una comunidad para compartir y descargar torrents con contenido legal, de calidad y para extender conocimiento.

Esta aplicación permite que los usuarios compartan torrents de calidad, existiendo para ello sistemas de votaciones por la comunidad hacia los torrents y usuarios que los comparten.

La aplicación pretende convertirse en una librería de recursos virtuales donde recurrir para alcanzar información o recursos con licencias libres (o por lo menos permisivas) que permitan redistribuirlos.

Cada usuario será dueño y responsable de sus subidas, además de respetarse en todo momento su autoría (Si así lo fuera) de los elementos compartidos.

En Internet existen incontables sitios webs, blogs, foros... donde se comparte a diario contenido y recursos que a veces es complicado subir por tener un elevado tamaño. En otros casos nos gustaría que esto continuara siendo público para otras personas, pero esto no se consigue utilizando envíos privados, foros que dejan de estar activo, nubes en las que eliminamos al tiempo el recurso por necesitar espacio...

Esta aplicación pretende concentrar todos esos recursos y crear un sitio común que facilite la divulgación de los mismos además de garantizar la supervivencia ya que mediante torrents los recursos pasarán a formar parte de una red de usuarios donde aumenta la posibilidad de que alguno continue compartiéndolo. Además de existir servidores dedicados a almacenar estos recursos para garantizar su descarga.


## Funcionalidad principal de la aplicación
- Los visitantes podrán crear cuenta en el sistema.
- Los usuarios serán quienes suban sus torrents y decidan la licencia si son autores del mismo.
- Existirá una Zona de petición de torrent por categorías que permitirá mostrar la demanda de un recurso específico aún no existente en la plataforma.
- Votar la calidad de los torrents y usuarios mediante un sistema de votación.
- Cada torrent tiene una función de recomendación.
- Premiar a los usuarios que comparten torrents según la cantidad de ellos con mejores rangos.
- Cada torrent llevará una suma de verificación con la que validar la descarga.
- Existe un sistema de roles según la cantidad de subidas y las votaciones positivas.
- Existe un sistema de roles para un administrador y varios revisores/editores
- Al ver la ficha de un torrent se podrá conocer cuantos lo comparten
- Existe una página de estadísticas donde el administrador puede verlas y descargarlas
- Los torrents compartidos se dividen por categorías principales:
    - Máquinas Virtuales
    - Guías
    - Chuletas
    - Libros
    - Audio Libros
    - Sistemas Operativos Oficiales
    - Sistemas Operativos Modificados
    - Aplicaciones
    - Complementos de aplicaciones (Plugins, brochas, pack de idiomas...)

## Objetivos generales
- Subir y descargar torrents buscando que sean de calidad.
- Gestionar torrents subidos.
- Crear y gestionar usuarios.
- Valorar usuarios y torrents existentes.
- Demandar recursos (torrent) de algo que aún no exista.
- Acceder a estadísticas de la aplicación mediante gráficas generadas dinámicamente.
- Integrar torrents subidos en tracker

# Elemento de innovación
- Consultar tracker de torrent en ajax tras cargar la página para conocer la cantidad de semillas (Personas compartiendo determinado torrent).
- Mostrar usuarios conectados a la aplicación.
- Estadísticas en backend para el administrador tener control del sitio, generando gráficos muy visuales para conocer el estado de un simple vistazo. Esto tendría que investigar librerías para convertir los datos de BD en gráficos dinámicamente.
- Incorpora interfaz única para administrador.
- Integración con API de twitter para publicar dinámicamente resumenes cada hora.
- Crear Plugin jQuery con menú flotante lateral para ir a cada categoría en 1 click.
- Exportar PDF con estadísticas con el rol administrador.
- Exportar CSV con estadísticas con el rol administrador.

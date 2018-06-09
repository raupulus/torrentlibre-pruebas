/**
 * @author Raúl Caro Pastorino
 * @copyright Copyright © 2018 Raúl Caro Pastorino
 * @license https://www.gnu.org/licenses/gpl-3.0-standalone.html
 */

/**
 * Realiza una petición ajax al servidor para generar un aumento en el
 * número de descargas que se han efectuado sobre el recurso.
 * @param parametros Los parámetros a enviar mediante POST.
 * @param url Dirección del controlador para procesar la petición.
 */
function aumentarDescargas(parametros, url) {
    var xmlhttp = new XMLHttpRequest();

    xmlhttp.onreadystatechange = function() {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            console.log('terminado');
            return xmlhttp.responseText;
        }
    };

    xmlhttp.open("POST", url, true);

    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");

    xmlhttp.send(parametros);
}

function actualizarDescargas(n_descargas) {
    console.log(n_descargas);
    alert(n_descargas);
}

/**
 * Añade eventos a los botones que descargan el torrent
 * @param parametros Los parámetros a enviar mediante POST.
 * @param url Dirección del controlador para procesar la petición.
 */
function eventoDescargas(parametros, url) {
    var btns = document.getElementsByClassName('btn-descargar')[0];
    btns.addEventListener('click', function() {
        var n_descargas = aumentarDescargas(parametros, url);
        console.log('eventoDescargas: ' + n_descargas);
        if (n_descargas >= 1) {
            actualizarDescargas(n_descargas);
        }
    });
}

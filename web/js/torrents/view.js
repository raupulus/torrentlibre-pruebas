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

    /*
    xmlhttp.onreadystatechange = function() {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            console.log('terminado');
            //return xmlhttp.responseText;
        }
    };
    */

    xmlhttp.open("POST", url, true);

    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");

    xmlhttp.send(parametros);
}

function actualizarDescargas(parametros, url) {
    $.ajax({
        dataType: 'json',
        type: 'GET',
        url: url,
        //data:{'param1':'valor','param2':'valor2'},
        //data: $('#formulario').serialize(),
        timeout: 5000  // Tiempo a esperar antes de dar error
    })
     .done(function(datos) {
        console.log('bien');
    });
    /*
    var xmlhttp = new XMLHttpRequest();

    xmlhttp.onreadystatechange = function() {
        if (xmlhttp.readyState==4 && xmlhttp.status==200) {
            return JSON.parse(xmlhttp.responseText);
            //document.getElementById('disponibilidad').append(resp);
        }
    };

    xmlhttp.open("GET", url, true);

    xmlhttp.send();
    */

    // Añade valor al campo correspondiente
    //document.getElementById('???').

}

/**
 * Añade eventos a los botones que descargan el torrent
 * @param parametros Los parámetros a enviar mediante POST.
 * @param url Dirección del controlador para procesar la petición.
 */
function eventoDescargas(parametros, url) {
    var btns = document.getElementsByClassName('btn-descargar')[0];
    btns.addEventListener('click', function() {
        aumentarDescargas(parametros, url);

        console.log('eventoDescargas: ' + actualizarDescargas(parametros, url));
    });
}

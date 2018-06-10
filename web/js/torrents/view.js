/**
 * @author Raúl Caro Pastorino
 * @copyright Copyright © 2018 Raúl Caro Pastorino
 * @license https://www.gnu.org/licenses/gpl-3.0-standalone.html
 */

/**
 * Añade eventos al boton que descarga el torrent y realiza una
 * petición ajax al servidor para generar un aumento en el
 * número de descargas que se han efectuado sobre el recurso.
 */
function eventoDescargas() {
    $('form[name="aumentar-descargas"]').on('submit', function(e) {
        e.preventDefault();
        window.location.href = $(this).children('input[name="file"]').val();

        $.post('/torrents/aumentardescargas',
            $(this).serialize(), function(data) {
                $('.n_descargas').text(data);
            }
        );
    });
}

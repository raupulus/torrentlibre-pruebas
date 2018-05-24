/*
* Recibe 1 o dos cadenas con forma de fecha y devuelve la diferencia
* @param $fecha1 Fecha más baja del rango.
* @param $fecha2 Fecha más alta del rango (Es opcional, en su ausencia
*                se entenderá que es la fecha actual).
*/
function calcularDiferencia($fecha1, $fecha2 = 'now') {
$fecha1 = new DateTime($fecha1);
$fecha2 = new DateTime($fecha2);

return date_diff($fecha1, $fecha2)->format('%y');
}

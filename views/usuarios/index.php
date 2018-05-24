<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\UsuariosSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Usuarios';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="usuarios-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <h3>Datos básicos</h3>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            //['class' => 'yii\grid\SerialColumn'],

            'id',
            'nombre',
            'nick',
            'email:email',
            'biografia',
            'twitter',
            'avatar',

            //'password',
            //'auth_key',
            //'token',
            //'web',
            //'localidad',
            //'provincia',
            //'direccion',
            //'telefono',
            //'fecha_nacimiento',
            //'geoloc',
            //'sexo',
            //'preferencias_id',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

    <h3>Datos personales</h3>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            'id',
            'nombre',
            'nick',
            'web',
            'localidad',
            'provincia',
            'direccion',
            'telefono',
            'fecha_nacimiento',
            'geoloc',
            'sexo',
            //'preferencias_id',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


    <h1>Pruebas</h1>
    <?php
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

        // Prueba de la función
        $f1 = $dataProvider->models[0]->fecha_nacimiento;
        echo calcularDiferencia($f1);
    ?>
</div>

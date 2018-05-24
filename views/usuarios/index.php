<?php

use yii\helpers\Html;
use yii\grid\GridView;
use @app\helpers\fechas;

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


        // Prueba de la función
        $f1 = $dataProvider->models[0]->fecha_nacimiento;
        echo calcularDiferencia($f1);
    ?>
</div>

<?php

use app\assets\UsuariosViewAsset;
use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Usuarios */

$this->title = $model->nombre;
$this->params['breadcrumbs'][] = ['label' => 'Usuarios', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;

// Registro assets para esta vista
UsuariosViewAsset::register($this);

// Variables
if (!Yii::$app->user->isGuest) {
    $rol = Yii::$app->user->identity->rol;
}

?>
<div class="usuarios-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'nombre',
            'nick',
            'email:email',
            'password',
            'auth_key',
            'token',
            'web',
            'localidad',
            'provincia',
            'direccion',
            'telefono',
            'biografia',
            'fecha_nacimiento',
            'geoloc',
            'sexo',
            'twitter',
            'preferencias_id',
            'avatar',
        ],
    ]) ?>

    <p>
        <?php
        if ((Yii::$app->user->id === $model->id) || ($rol === 'admin')): ?>
            <?= Html::a('Modificar',
                       ['update', 'id' => $model->id],
                       ['class' => 'btn btn-primary']) ?>

            <?= Html::a('Eliminar cuenta', ['delete', 'id' => $model->id], [
                'class' => 'btn btn-danger',
                'data' => [
                    'confirm' => '¿Estás seguro que quieres eliminar el usuario?',
                    'method' => 'post',
                ],
            ]) ?>
        <?php endif ?>
    </p>

</div>

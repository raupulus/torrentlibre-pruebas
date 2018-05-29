<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\TorrentsSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="torrents-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?php // $form->field($model, 'id') ?>

    <?php // $form->field($model, 'licencia_id') ?>

    <?php // $form->field($model, 'categoria_id') ?>

    <?php // $form->field($model, 'usuario_id') ?>

    <?= $form->field($model, 'titulo') ?>

    <?php // echo $form->field($model, 'resumen') ?>

    <?php // echo $form->field($model, 'descripcion') ?>

    <?php // echo $form->field($model, 'imagen') ?>

    <?php // echo $form->field($model, 'file') ?>

    <?php // echo $form->field($model, 'size') ?>

    <?php // echo $form->field($model, 'magnet') ?>

    <?php // echo $form->field($model, 'password') ?>

    <?php // echo $form->field($model, 'md5') ?>

    <?= $form->field($model, 'n_descargas') ?>

    <?php // echo $form->field($model, 'online')->checkbox() ?>

    <?php // echo $form->field($model, 'created_at') ?>

    <?php // echo $form->field($model, 'updated_at') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

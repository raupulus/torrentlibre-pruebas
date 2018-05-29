<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\PreferenciasSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="preferencias-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'tema_id') ?>

    <?= $form->field($model, 'promociones')->checkbox() ?>

    <?= $form->field($model, 'noticias')->checkbox() ?>

    <?= $form->field($model, 'resumen')->checkbox() ?>

    <?php // echo $form->field($model, 'tour')->checkbox() ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

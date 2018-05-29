<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Preferencias */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="preferencias-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'tema_id')->textInput() ?>

    <?= $form->field($model, 'promociones')->checkbox() ?>

    <?= $form->field($model, 'noticias')->checkbox() ?>

    <?= $form->field($model, 'resumen')->checkbox() ?>

    <?= $form->field($model, 'tour')->checkbox() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

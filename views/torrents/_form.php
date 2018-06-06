<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Torrents */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="torrents-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'licencia_id')->dropDownList($licencias) ?>

    <?= $form->field($model, 'categoria_id')->dropDownList($categorias) ?>

    <?= $form->field($model, 'titulo')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'resumen')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'descripcion')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'u_img')->fileInput() ?>

    <?= $form->field($model, 'u_torrent')->fileInput() ?>

    <?= $form->field($model, 'password')->passwordInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Subir', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

<?php

/**
 * @author Raúl Caro Pastorino
 * @link http://www.fryntiz.es
 * @copyright Copyright (c) 2018 Raúl Caro Pastorino
 * @license https://www.gnu.org/licenses/gpl-3.0-standalone.html
**/

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Usuarios */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="nav-form-usuario">
    <ul>
        <li><a href="#datos-basicos">Datos básicos</a></li>
        <li><a href="#datos-opcionales">Datos Opcionales</a></li>
        <li><a href="#datos-sociales">Datos Sociales</a></li>
    </ul>
</div>

<div class="usuarios-form">

    <?php $form = ActiveForm::begin(); ?>

    <?php // $form->field($model, 'id')->textInput() ?>

    <?php // $form->field($model, 'auth_key')->textInput(['maxlength' => true]) ?>

    <?php // $form->field($model, 'token')->textInput(['maxlength' => true]) ?>

    <div id="datos-basicos" class="form-dividido">
        <h3>Datos Básicos</h3>
        <?= $form->field($model, 'nombre')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'nick')->textInput([
                'enableAjaxValidation' => true,
                'maxlength' => true]) ?>

        <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'password')->passwordInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'password_repeat')->passwordInput(); ?>
    </div>


    <div id="datos-opcionales" class="form-dividido">
        <h3>Datos Opcionales</h3>
        <?= $form->field($model, 'localidad')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'provincia')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'direccion')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'telefono')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'fecha_nacimiento')->textInput() ?>

        <?= $form->field($model, 'sexo')->textInput(['maxlength' => true]) ?>
    </div>

    <div id="datos-sociales" class="form-dividido">
        <h3>Datos Sociales</h3>
        <?= $form->field($model, 'biografia')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'web')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'twitter')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'imagen')->fileInput() ?>

        <?= $form->field($model, 'geoloc')->textInput(['maxlength' => true]) ?>
    </div>

    <?php // $form->field($model, 'preferencias_id')->textInput() ?>

    <div class="form-group">
        <div class="btn-anterior-box">
            <?= Html::buttonInput('Anterior', ['class' =>
                'btn-form btn-anterior']) ?>
        </div>
        <div class="btn-siguiente-box">
            <?= Html::buttonInput('Siguiente', ['class' => 'btn-form btn-siguiente']) ?>
        </div>
    </div>


    <div class="form-group">
        <div class="btn-confirmar-box">
            <?= Html::submitButton('Crear Cuenta', ['class' => 'btn-form 
            btn-confirmar']) ?>
        </div>
    </div>

    <?php ActiveForm::end(); ?>

</div>

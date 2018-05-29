<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Preferencias */

$this->title = 'Create Preferencias';
$this->params['breadcrumbs'][] = ['label' => 'Preferencias', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="preferencias-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

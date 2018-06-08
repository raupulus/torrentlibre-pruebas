<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Torrents */

$this->title = 'Update Torrents: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Torrents', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="torrents-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'licencias' => $licencias,
        'categorias' => $categorias,
    ]) ?>

</div>

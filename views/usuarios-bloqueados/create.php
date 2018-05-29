<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\UsuariosBloqueados */

$this->title = 'Create Usuarios Bloqueados';
$this->params['breadcrumbs'][] = ['label' => 'Usuarios Bloqueados', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="usuarios-bloqueados-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

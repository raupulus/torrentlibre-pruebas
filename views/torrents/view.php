<?php

use app\assets\TorrentsViewAsset;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Torrents */

$this->title = $model->titulo;
$this->params['breadcrumbs'][] = ['label' => 'Torrents', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;

/* Aumentar descargas al pulsar descargar */
$scripts = <<<EOF
eventoDescargas();
EOF;
/* Fin de aumentar descargas */

$this->registerJs($scripts);

// Registro assets para esta vista
TorrentsViewAsset::register($this);
?>
<div class="torrents-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'titulo',
            [
                'attribute' => 'imagen',
                'format' => 'raw',
                'value' => function($model) {
                    $img = $model->imagen;
                    $ruta = Yii::$app->request->baseUrl . yii::getAlias('@r_imgTorrent').'/';

                    if ((! isset($img)) || (! file_exists($ruta.$img))) {
                        $img = 'default.png';
                    }

                    return '<img src="'.$ruta.$img.'" />';
                }
            ],
            'resumen',
            'licencia.tipo:text:Licencia',
            'categoria.nombre:text:Categoría',
            'usuario.nick:text:Uploader',
            'descripcion',
            [
                'attribute' => 'file',
                'format' => 'raw',
                'value' => function($model) {
                    $file = $model->file;
                    $ruta = yii::getAlias('@r_torrents').'/';

                    /* No funciona desde que active prettyURL pero la ruta ok
                    if ((! isset($file)) || (! file_exists($ruta.$file))) {
                        return 'Archivo torrent no encontrado';
                    }
                    */

                    return Html::beginForm('', 'post', [
                            'name' => 'aumentar-descargas']) .
                        Html::hiddenInput('id', $model->id) .
                        Html::hiddenInput('file', $ruta . $file) .
                        Html::submitButton('Descargar Torrent', [
                                'class' => 'btn btn-success btn-descargar']) .
                        Html::endForm();
                },
            ],
            'size:shortSize',
            'magnet',
            'password',
            'md5',
            [
                'attribute' => 'n_descargas',
                'contentOptions' => ['class' => 'n_descargas'],
            ],
            'online:boolean',
            'created_at:datetime',
            'updated_at:datetime',
        ],
    ]) ?>

    <p>
        <?= Html::a('Modificar', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>

        <?= Html::a('Eliminar', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => '¿Seguro que quieres eliminar este torrent?',
                'method' => 'post',
            ],
        ]) ?>
    </p>
</div>

<?php

use app\assets\TorrentsIndexAsset;
use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel app\models\TorrentsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Torrents';
$this->params['breadcrumbs'][] = $this->title;

// Registro assets para esta vista
TorrentsIndexAsset::register($this);

?>
<div class="torrents-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?php // Html::a('Create Torrents', ['create'], ['class' => 'btn
    // btn-success']) ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'class' => 'grid-view',
        'tableOptions' => [
            'class' => 'tablaTorrentsIndex'
        ],
        'filterRowOptions' => [
            'class' => 'trSearch'
        ],
        'columns' => [
            //['class' => 'yii\grid\SerialColumn'],

            [
                'attribute' => 'titulo',
                'format' => 'raw',
                'value' => function($model) {
                    return Html::a($model->titulo, [
                        Url::to('torrents/view'),
                        'id' => $model->id
                    ]);
                }
            ],

            [
                'attribute' => 'imagen',
                'format' => 'raw',
                'value' => function($model, $key, $index) {
                    $img = $model->imagen;
                    $ruta = yii::getAlias('@r_imgTorrent').'/';

                    if ((! isset($img)) || (! file_exists($ruta.$img))) {
                        $img = 'default.png';
                    }

                    $img = '<img src="'.$ruta.$img.'" />';
                    $link = Html::a($img, [
                        Url::to('torrents/view'),
                        'id' => $model->id
                    ]);

                    return $link;
                }
            ],
            'resumen',
            'licencia.tipo',
            'categoria.nombre',

            [
                'attribute' => 'usuario.nick',
                'format' => 'raw',
                'value' => function($model) {
                    return Html::a($model->usuario->nick, [
                        Url::to('usuarios/view'),
                        'id' => $model->id
                    ]);
                }
            ],
            //'descripcion',
            //'file',
            //'size',
            //'magnet',
            //'password',
            //'md5',
            'n_descargas',
            'online:boolean',
            //'created_at',
            //'updated_at',

            //['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>

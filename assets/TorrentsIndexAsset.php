<?php
/**
 * @author Raúl Caro Pastorino
 * @link http://www.fryntiz.es
 * @copyright Copyright (c) 2018 Raúl Caro Pastorino
 * @license https://www.gnu.org/licenses/gpl-3.0-standalone.html
**/

namespace app\assets;

use yii\web\AssetBundle;

/**
 * Assets para vistas de Usuarios
 */
class TorrentsIndexAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/torrents/index.css',
    ];
    public $js = [
        'js/torrents/index.js',
    ];
    public $depends = [

    ];
}

<?php

/**
 * @author Raúl Caro Pastorino
 * @link http://www.fryntiz.es
 * @copyright Copyright (c) 2018 Raúl Caro Pastorino
 * @license https://www.gnu.org/licenses/gpl-3.0-standalone.html
**/

namespace app\models;

use function var_dump;
use Yii;
use yii\web\IdentityInterface;
use yii\helpers\Url;
use yii\imagine\Image;

/**
 * Este es el modelo para la clase "usuarios".
 *
 * @property int $id
 * @property string $nombre
 * @property string $nick
 * @property string $email
 * @property string $password
 * @property string $auth_key
 * @property string $token
 * @property string $web
 * @property string $localidad
 * @property string $provincia
 * @property string $direccion
 * @property string $telefono
 * @property string $biografia
 * @property string $fecha_nacimiento
 * @property string $geoloc
 * @property string $sexo
 * @property string $twitter
 * @property int $preferencias_id
 * @property string $avatar
 *
 * @property Comentarios[] $comentarios
 * @property Demandas[] $demandas
 * @property Puntos[] $puntos
 * @property Torrents[] $torrents
 * @property ReportesComentarios[] $reportesComentarios
 * @property Comentarios[] $comentarios0
 * @property ReportesTorrents[] $reportesTorrents
 * @property Torrents[] $torrents0
 * @property Torrents[] $torrents1
 * @property Preferencias $preferencias
 * @property UsuariosId $id0
 * @property UsuariosBloqueados $usuariosBloqueados
 */
class Usuarios extends \yii\db\ActiveRecord implements IdentityInterface
{
    /**
     * @const ESCENARIO_CREATE Constante para cuando estamos insertando
     */
    const ESCENARIO_CREATE = 'create';

    /**
     * @const ESCENARIO_UPDATE Constante para cuando estamos actualizando
     */
    const ESCENARIO_UPDATE = 'update';

    /**
     * Atributo usado para guardar el campo de "confirmar contraseña" del
     * formulario de creación de usuarios.
     * @var string
     */
    public $password_repeat;

    /**
     * Imagen subida mediante el formulario.
     * @var UploadedFile
     */
    public $imagen;

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'usuarios';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'nick', 'email'], 'required'],
            [['id', 'preferencias_id'], 'default', 'value' => null],
            [['id', 'preferencias_id'], 'integer'],
            [['fecha_nacimiento'], 'safe'],
            [['nombre', 'nick', 'email', 'auth_key', 'token', 'web', 'localidad', 'provincia', 'direccion', 'telefono', 'biografia', 'geoloc', 'twitter', 'avatar'], 'string', 'max' => 255],
            [['sexo'], 'string', 'max' => 1],
            [['email'], 'unique'],
            [['nick'], 'unique'],
            [['token'], 'unique'],
            [['id'], 'unique'],
            [['preferencias_id'], 'exist', 'skipOnError' => true, 'targetClass' => Preferencias::className(), 'targetAttribute' => ['preferencias_id' => 'id']],
            [['id'], 'exist', 'skipOnError' => true, 'targetClass' => UsuariosId::className(), 'targetAttribute' => ['id' => 'id']],
            [['imagen'], 'file', 'extensions' => 'png, jpg'],
            [['password'], 'string', 'max' => 255],
            [['password_repeat'], 'string', 'max' => 255],
            [
                ['password', 'password_repeat'],
                'required', 'on' => self::ESCENARIO_CREATE
            ],
            [
                ['password_repeat'],
                'compare',
                'compareAttribute' => 'password',
                'skipOnEmpty' => false,
                'on' => [self::ESCENARIO_CREATE, self::ESCENARIO_UPDATE],
                'message' => 'Deben coincidir las contraseñas.',
            ],
        ];
    }

    /**
     * {@inheritdoc}
     * @return array
     */
    public function attributes()
    {
        return array_merge(parent::attributes(), [
            'password_repeat',
            'imagen',
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nombre' => 'Nombre',
            'nick' => 'Nick',
            'email' => 'Email',
            'password' => 'Contraseña',
            'password_repeat' => 'Confirmar contraseña',
            'auth_key' => 'Auth Key',
            'token' => 'Token',
            'web' => 'Web',
            'localidad' => 'Localidad',
            'provincia' => 'Provincia',
            'direccion' => 'Dirección',
            'telefono' => 'Teléfono',
            'biografia' => 'Biografía',
            'fecha_nacimiento' => 'Edad',
            'geoloc' => 'Geoloc',
            'sexo' => 'Sexo',
            'twitter' => 'Twitter',
            'preferencias_id' => 'Preferencias ID',
            'avatar' => 'Avatar',
            'imagen' => 'Avatar',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getComentarios()
    {
        return $this->hasMany(Comentarios::className(), ['usuario_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDemandas()
    {
        return $this->hasMany(Demandas::className(), ['usuario_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPuntos()
    {
        return $this->hasMany(Puntos::className(), ['usuario_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTorrents()
    {
        return $this->hasMany(Torrents::className(), ['id' => 'torrent_id'])->viaTable('puntos', ['usuario_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getReportesComentarios()
    {
        return $this->hasMany(ReportesComentarios::className(), ['usuario_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getComentarios0()
    {
        return $this->hasMany(Comentarios::className(), ['id' => 'comentario_id'])->viaTable('reportes_comentarios', ['usuario_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getReportesTorrents()
    {
        return $this->hasMany(ReportesTorrents::className(), ['usuario_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTorrents0()
    {
        return $this->hasMany(Torrents::className(), ['id' => 'torrent_id'])->viaTable('reportes_torrents', ['usuario_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTorrents1()
    {
        return $this->hasMany(Torrents::className(), ['usuario_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPreferencias()
    {
        return $this->hasOne(Preferencias::className(), ['id' => 'preferencias_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUsuariosId()
    {
        return $this->hasOne(UsuariosId::className(), ['id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUsuariosBloqueados()
    {
        return $this->hasOne(UsuariosBloqueados::className(), ['usuario_id' => 'id']);
    }

    /**
     * Devuelve el rol del usuario
     * @return \yii\db\ActiveQuery
     */
    public function getRol()
    {
        return $this->usuariosId->rol->tipo;
    }


    /**
     * Acciones llevadas a cabo antes de insertar un usuario
     * @param bool $insert Acción a realizar, si existe está insertando
     * @return bool Devuelve un booleano, si se lleva a cabo es true.
     */
    public function beforeSave($insert)
    {
        if (parent::beforeSave($insert)) {
            if ($insert) {
                $this->token = Yii::$app->security->generateRandomString();
                $this->auth_key = Yii::$app->security->generateRandomString();

                if ($this->scenario === self::ESCENARIO_CREATE) {
                    $this->password = Yii::$app->security
                                      ->generatePasswordHash($this->password);
                }
            } elseif ($this->scenario === self::ESCENARIO_UPDATE) {
                if ($this->password === '') {
                    $this->password = $this->getOldAttribute('password');
                } else {
                    $this->password = Yii::$app->security
                                      ->generatePasswordHash($this->password);
                }
            }
            return true;
        }
        return false;
    }

    /*
     * Devuelve la ruta del avatar para el usuario actual.
     * return String Ruta del avatar
     */
    public function getRutaImagen()
    {
        $nombre = Yii::getAlias('@r_avatar/') . $this->avatar;
        if (file_exists($nombre)) {
            return Url::to('/r_avatar/') . $this->avatar;
        }
        return Url::to('/r_avatar/') . 'default.png';
    }

    /**
     * Sube la imagen al directorio correspondiente y devuelve si fue posible.
     * El nombre se compone del "id-" del usuario seguido del nombre real de la
     * imagen.
     * @return bool Indica si se lleva la acción
     */
    public function upload()
    {
        // TODO → Comprobar si existe la imagen y borrarla antes de guardarla.
        if ($this->imagen === null) {
            return true;
        }
        $nombre = Yii::getAlias('@r_avatar/') .
                  $this->id . '-' .
                  $this->imagen->baseName . '.' .
                  $this->imagen->extension;
        $res = $this->imagen->saveAs($nombre);
        if ($res) {
            Image::thumbnail($nombre, 250, null)->save($nombre);
        }
        return $res;
    }


    /* AUTENTICACIÓN DE USUARIOS */

    /**
     * {@inheritdoc}
     */
    public static function findIdentity($id)
    {
        return static::findOne($id);
    }

    /**
     * {@inheritdoc}
     */
    public static function findIdentityByAccessToken($token, $type = null)
    {
        /*
        foreach (self::$users as $user) {
            if ($user['token'] === $token) {
                return new static($user);
            }
        }
        return null;
        */
    }

    /**
     * {@inheritdoc}
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * {@inheritdoc}
     */
    public function getAuthKey()
    {
        return $this->auth_key;
    }

    /**
     * {@inheritdoc}
     */
    public function validateAuthKey($authKey)
    {
        return $this->auth_key === $authKey;
    }

    /**
     * Compara si la cadena pasada como parámetro coincide con la
     * contraseña de este usuario.
     * @param  string $password La contraseña a validar.
     * @return bool             Devuelve true si es válida.
     */
    public function validatePassword($password)
    {
        return Yii::$app->security->validatePassword(
            $password,
            $this->password
        );
    }
}

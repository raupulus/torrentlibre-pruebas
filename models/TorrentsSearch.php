<?php
/**
 * @author Raúl Caro Pastorino
 * @link http://www.fryntiz.es
 * @copyright Copyright (c) 2018 Raúl Caro Pastorino
 * @license https://www.gnu.org/licenses/gpl-3.0-standalone.html
**/

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Torrents;

/**
 * TorrentsSearch represents the model behind the search form of `\app\models\Torrents`.
 */
class TorrentsSearch extends Torrents
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'licencia_id', 'categoria_id', 'usuario_id', 'size', 'n_descargas'], 'integer'],
            [['titulo', 'resumen', 'descripcion', 'imagen', 'file', 'magnet', 'password', 'md5', 'created_at', 'updated_at'], 'safe'],
            [['online'], 'boolean'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Torrents::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => ['pageSize' => Yii::getAlias('@p_torrents')],
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // Condiciones de filtrado en el Grid
        $query->andFilterWhere([
            //'id' => $this->id,
            'licencia_id' => $this->licencia_id,
            'categoria_id' => $this->categoria_id,
            'usuario_id' => $this->usuario_id,
            //'size' => $this->size,
            'n_descargas' => $this->n_descargas,
            'online' => $this->online,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['ilike', 'titulo', $this->titulo])
            ->andFilterWhere(['ilike', 'resumen', $this->resumen])
            ->andFilterWhere(['ilike', 'descripcion', $this->descripcion])
            ;

        return $dataProvider;
    }
}

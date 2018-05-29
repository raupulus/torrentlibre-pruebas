<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Preferencias;

/**
 * PreferenciasSearch represents the model behind the search form of `app\models\Preferencias`.
 */
class PreferenciasSearch extends Preferencias
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'tema_id'], 'integer'],
            [['promociones', 'noticias', 'resumen', 'tour'], 'boolean'],
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
        $query = Preferencias::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'tema_id' => $this->tema_id,
            'promociones' => $this->promociones,
            'noticias' => $this->noticias,
            'resumen' => $this->resumen,
            'tour' => $this->tour,
        ]);

        return $dataProvider;
    }
}

<?php

namespace app\models\Entity\Task1;

use yii\db\ActiveRecord;

class ProductProperty extends ActiveRecord
{
    public static function tableName()
    {
        return '{{%product_property}}';
    }
    public function getProduct()
    {
        return $this->hasOne(Product::className(), ['product_id' => 'id']);
    }
    public function getProductAttribute()
    {
        return $this->hasOne(Attribute::className(), ['id' => 'attribute_id']);
    }
}

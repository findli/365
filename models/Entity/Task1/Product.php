<?php

namespace app\models\Entity\Task1;

use yii\db\ActiveRecord;

class Product extends ActiveRecord
{
    public static function tableName()
    {
        return '{{%product}}';
    }
    public function getProperties()
    {
        return $this->hasMany(ProductProperty::className(), ['product_id' => 'id']);
    }
    public function getCategory()
    {
        return $this->hasOne(Category::className(), ['id' => 'category_id']);
    }
}

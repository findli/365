<?php

namespace app\models\Entity\Task1;

use yii\db\ActiveRecord;

class Attribute extends ActiveRecord
{
    public static function tableName()
    {
        return '{{%attribute}}';
    }
    public function getAttributeCategories()
    {
        return $this->hasMany(CategoryAttribute::className(), ['attribute_id' => 'id']);
        //        return $this->hasMany(Category::className(), ['id' => 'category_id'])->viaTable(CategoryAttribute::className(), ['attribute_id' => 'id']);
    }
    public function getCategories()
    {
        return $this->hasMany(Category::className(), ['id' => 'category_id'])->via('attributeCategories');
    }
}

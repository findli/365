<?php

namespace app\models\Entity\Task1;

use yii\db\ActiveRecord;

class Category extends ActiveRecord
{
    public static function tableName()
    {
        return '{{%category}}';
    }
    /*    public function getCategoryAttributes()
        {
            return $this->hasMany(Attribute::className(), ['id' => 'attribute_id'])->viaTable(CategoryAttribute::className(), ['category_id' => 'id']);
        }*/

    public function getCategoryAttributes()
    {
        return $this->hasMany(CategoryAttribute::className(), ['category_id' => 'id']);
        //        return $this->hasMany(Category::className(), ['id' => 'category_id'])->viaTable(CategoryAttribute::className(), ['attribute_id' => 'id']);
    }
    public function getAttributesList()
    {
        return $this->hasMany(Attribute::className(), ['id' => 'attribute_id'])->via('categoryAttributes');
    }
    public function getProducts()
    {
        return $this->hasMany(Product::className(), ['category_id' => 'id']);
    }
}

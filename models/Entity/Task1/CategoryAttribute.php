<?php

namespace app\models\Entity\Task1;

use yii\db\ActiveRecord;

class CategoryAttribute extends ActiveRecord
{
    public static function tableName()
    {
        return '{{%category_attribute}}';
    }
}

<?php

namespace app\models\Entity\Task2;

use yii\db\ActiveRecord;

class Content extends ActiveRecord
{
    public static function tableName()
    {
        return '{{task2_content}}';
    }
    public function getContent()
    {
        return $this->hasOne(Content::className(), ['id' => 'article_id']);
    }
}

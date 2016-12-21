<?php

namespace app\models\Entity\Task2;

use yii\db\ActiveRecord;

class Article extends ActiveRecord
{
    private $title;
    private $content;
    /** @var  Content $contentEntity */
    private $contentEntity;
    public function init()
    {
        parent::init();
        $this->contentEntity = $this->getContentEntity()->where(['article_id' => $this->id])->one();
    }
    public static function tableName()
    {
        return '{{task2_article}}';
    }
    private function getContentEntity()
    {
        return $this->hasMany(Content::className(), ['article_id' => 'id']);
    }
    /**
     * @return mixed
     */
    public function getTitle()
    {

        return $this->contentEntity->title;
    }
    /**
     * @param mixed $title
     */
    public function setTitle($title)
    {
        $this->contentEntity->title = $title;
    }
    /**
     * @return mixed
     */
    public function getContent()
    {
        return $this->contentEntity->content;
    }
    /**
     * @param mixed $content
     */
    public function setContent($content)
    {
        $this->contentEntity->content = $content;
    }
    public function afterSave($insert, $changedAttributes)
    {
        parent::afterSave($insert, $changedAttributes);

        $this->contentEntity->save();
    }
}

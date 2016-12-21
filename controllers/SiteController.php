<?php

namespace app\controllers;

use app\models\Entity\Task1\Category;
use app\models\Entity\Task2\Content;
use yii\web\Controller;

class SiteController extends Controller
{
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }
    public function actionIndex()
    {
        $categories = Category::find()->orderBy('created_at')->all();

        return $this->render('index', ['categories' => $categories]);
    }
    public function actionTask2()
    {
        $article = Content::find()->limit(1)->one();
        $article->title = 'Статья 1 с правками.';
        $article->save();
        return $this->render('task2', ['article' => $article]);
    }
}
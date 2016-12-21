<?php

namespace app\controllers;

use app\models\Entity\Task1\Category;
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
}
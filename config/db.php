<?php

return [
    'class'       => 'yii\db\Connection',
    'dsn'         => 'mysql:host=' . getenv('DB_HOST') . ';dbname=' . getenv('DB_DATABASE') . ';port=' . getenv('DB_PORT'),
    'username'    => getenv('DB_USERNAME'),
    'password'    => getenv('DB_PASSWORD'),
    'charset'     => 'utf8',
    'tablePrefix' => getenv('DB_TABLE_PREFIX'),
];

<?php

/* @var $this yii\web\View */

$this->title = 'Задание 1';
?>
<div class="site-index">

    <div class="body-content">

        <div class="row">
            <div class="col-lg-2">
            </div>
            <div class="col-lg-6">
                <?php foreach ($categories as $category) {
                    echo $category->title;
                    echo '<br />';
                    foreach ($category->products as $product) {
                        echo '&nbsp;&nbsp;&nbsp;&nbsp;';
                        echo $product->title;
                        echo '<br />';
                        foreach ($product->properties as $property) {
                            echo '&nbsp;&nbsp;&nbsp;&nbsp;';
                            echo '&nbsp;&nbsp;&nbsp;&nbsp;';
                            echo $property->productAttribute->title . ' = ' . $property->value;
                            echo '<br />';
                        }
                    };
                    echo '<br />';
                    echo '<br />';
                }
                ?>
            </div>
            <div class="col-lg-2">
            </div>
        </div>

    </div>
</div>

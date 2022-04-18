<?php
require_once("SimpleCalc.php");

//クラスからインスタンスを作成
$calc = new SimpleCalc();

//これでclass内のプロパティにアクセスすることが可能になる。
$calc->setNumber(10);

$calc -> add(20);
$calc -> add(30);
$calc -> show();
$calc->getNumber();
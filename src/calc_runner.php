<?php
require_once("SimpleCalc.php");

//クラスからインスタンスを作成
$calc = new SimpleCalc();
$calc2 = new SimpleCalc();

//インスタンスのプロパティに代入
$calc->mypropatiy = 10;
$calc2->mypropatiy = 20;

echo $calc->number;
echo $calc2->number;



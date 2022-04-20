<?php
require_once("SimpleCalc.php");

try{
    //インスタンスを作成
    $calc = new SimpleCalc();
    $calc -> add(10);
    $calc -> subtract(5);
    $calc -> multiply(10);
    $calc -> divide(0);

    $calc -> show();

}catch(Exception $e){

}

//クラスからインスタンスを作成

//これでclass内のプロパティにアクセスすることが可能になる。
$calc->setNumber(10);

$calc -> add(20);
$calc -> add(30);
$calc -> show();
$calc->getNumber();
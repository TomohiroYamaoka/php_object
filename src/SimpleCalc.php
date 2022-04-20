<?php
require_once("CalcException.php");

class SimpleCalc
{
    protected $number;

    //インスタンス作成時に、初期化をする
    //第一引数に初期値を設定する
    public function __construct($number = 0)
    {
        $this->number = $number;
    }
    public function setNumber($number){
        $this -> number = $number;
    }
    public function add($x)
    {
        $this->number = $this->number + $x;
    }
    public function show(){
        echo $this->number;
    }
    //引き算
    public function subtract($x)
    {
        $this -> number + $x;
    }
    //かけ算
    public function multiply($x)
    {
        $this -> number = $this ->number * $x;
    }
    //割り算
    public function divide($x)
    {
        if($x == 0){
            $e = new CalcException(CalcException::DIVIDE_BY_ZERO);
            throw $e;
        }
        $this -> number = $this->number / $x;
    }
    //最終的な返り値
    public function getNumber(){
        return $this -> number;
    }
}
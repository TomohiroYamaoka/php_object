<?php
class SimpleCalc
{
    private $number;

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
    public function getNumber(){
        return $this -> number;
    }
}
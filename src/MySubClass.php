<?php
require_once("SimpleCalc.php");

class MySubClass extends MyClass
{
    //べき乗を求める
    public function pow($x=2){
        {
            $this->number = $this->number ** $x;
        }
    }
}
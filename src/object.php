class Robot{
    private $name = "";
    private $color = "";

    //constructで初期実行
    public function __construct($name,$color){
        $this->setName($name);
    }
    //文字列変換
    public function setName($name){
        $this->name = (string)filter_var($name);
    }
    //名前を取得する
    public function getName(){
        return $this->name;
    }
}

//インスタンスを作成
$a = new Robot("ロボ太郎");
$b = new Robot("ロボ次郎");

echo $a->getName();
echo $b->getName();


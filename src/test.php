class Bus{
    //class内
    public $name;

    public function __construct($name){
        $this->name = $name;
        echo "コンストラクタを実行";
    }
    public function run(){
        echo $this->name.'が走ります'
    }
}

class Driver{
    public function start($car){
        $car->run();
    }
}

$driver = new Driver();
$driver->start(new Bus(""))



//アロー関数を使ってプロパティにアクセス可能。
$bus1 = new Bus('鳩ばす')

$bus1->run();
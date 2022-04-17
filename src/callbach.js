//setTimeoutにコールバック関数を登録
//1000ms待つ
//コールバック関数を実行
//コンソールに完了と表示
setTimeout(function () {
  console.log("完了");
}, 1000);

new Promise(function (resolve) {
  setTimeout(() => {
    console.log("処理");
    resolve();
  }, 500);
})
  .then(function () {
    return new Promise(function (resolve) {
      setTimeout(function () {
        console.log("処理2");
        resolve();
      }, 600);
    });
  })
  .then(function () {
    return new Promise(function (resolve) {
      setTimeout(function () {
        console.log("処理3");
        resolve();
      }, 700);
    });
  });

//Promiseオブジェクトを返す関数。
const time = function (time, text) {
  const promise = new Promise(function (resolve) {
    setTimeout(function () {
      console.log(test);
      resolve();
    }, time);
  });
  return promise;
};

//短くしたver
timer(500, "処理1")
  .then(function () {
    return timer(600, "処理2");
  })
  .then(function () {
    return timer(700, "処理3");
  })
  .then(function () {
    console.log("終了");
  });

//ただもっとわかりやすく書きたい
//Promiseには引数を渡すことができる。
const timerB = (time) =>
  new Promise((resolve) => {
    setTimeout(() => {
      resolve(time);
    }, time);
  });

timerB(500).then((val) => {
  console.log(val);
});

//asyncとawait
//asynchronous→非同期の
//await→待つ
//関数の前にasyncを書くと、その関数ブロックが非同期用の領域になる。
//thenって書いていたところを→asyncに置き換える。
const func = async function () {
  const res1 = await timerB(500);
  const res2 = await timerB(600);
  console.log(res1, res2);
};
func();

//resolveが解決
//reject()が失敗

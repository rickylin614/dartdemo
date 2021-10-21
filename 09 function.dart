void main(List<String> args) {
  print(first("1:"));

  // 函數裡面含有子方函數
  String innerFunc() {
    return "2: inner";
  }

  // 調用子函數
  print(innerFunc());

  // 調用嵌套函數
  second();

  // 匿名函數
  var fn = (String input) {
    return int.parse(input) + 999;
  };
  print("匿名函數:" + fn("1").toString());

  // 箭頭函數
  var arrow = (value) => {value = value + 2}; // (input) = > {returnValue}
  print("箭頭函數:" + arrow(3).toString());

  // 自執行方法
  ((str) {
    print("自執行方法" + str);
  })("check");

  // 閉包
  var func = closed();
  print("第一次呼叫:" + func().toString() + "第二次呼叫:" + func().toString());
}

// 返回值 函數名稱(參數)
String first(String input) {
  return input + "第一個函數";
}

// 遷套函數事例
void second() {
  // 函數裡面宣告的函數 只能在函數裡面使用
  void second2(String input) {
    print(input + "這是一個嵌套函數");
  }

  second2("3:");
}

// 閉包
Function closed() {
  int count = 0;
  int closed() {
    count++;
    return count;
  }

  return closed;
}

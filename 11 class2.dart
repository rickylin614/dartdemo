main(List<String> args) {
  Person p = new Person();
  PrintPerson(p);
}

class Person {
  String name = "張三";
  int age = 15;

  void printInfo() {
    print("name:${this.name}\tage:${this.age}");
  }
}

PrintPerson(dynamic p) {
  // p?.printInfo() ?? print("null"); // ? 若為空不動作 若有則動作

  // is 等同java的instance of
  if (p is Person) {
    p.printInfo();
  }
  // 轉型之後才呼叫方法
  (p as Person).printInfo();
  // 多行修改操作方式
  p
    ..age = 15
    ..name = "李四"
    ..printInfo();

  p = null;
  p?.printInfo(); // ?. 前者為null不動作 否則印出(一般類型沒有null狀態 因此使使用方式較雞肋)
}

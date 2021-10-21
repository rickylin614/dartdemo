void main(List<String> args) {
  // 實例化
  var p = new Person();
  print(p.getInfo());
  p.name = "張三";
  print(p.getInfo());
  var p2 = new Person.age(10);
  print(p2.getInfo());

  Person s = new Son();
  print(s.getInfo());
  Person s2 = new Daughter();
  print(s2.getInfo());
}

// 封裝
class Person {
  // 屬性必須給初始值
  // 無權限修飾符
  String name = "父親";
  int age = 999;
  // 下劃線表達屬性為私有的
  int _privateDemo = 10;
  // 構造函數
  Person() {
    print("父親成功創建了");
  }
  // 命名構造函數
  Person.age(int age) {
    this.age = age;
  }

  String getInfo() {
    return "name:${this.name}----age:${this.age}";
  }

  // 私有方法必須被調用
  int getPrivate() {
    return _privateDemo;
  }

  static String _pet = ""; // 靜態屬性(不需要被實例化 所有Person共有該屬性)

  // 靜態函數(不需要被實例化 所有Person共有該方法)
  static String GetPet() {
    return _pet;
  }
}

// 繼承
class Son extends Person {
  String name = "兒子";
  String phone = "+886 123456789";
  Son() {
    print("兒子成功創建了");
  }

  String getInfo() {
    return super.getInfo() + "----phone:${this.phone}";
  }
}

// 多形 (與Son做對比)
class Daughter extends Person {
  String name = "女兒";
  String male = "female";
  Daughter() {
    print("女兒成功創建了");
  }

  String getInfo() {
    return super.getInfo() + "----male:${this.male}";
  }
}

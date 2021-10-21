main(List<String> args) {
  Animal a = new Dog();
  Animal d = new DeadDog();
  a.eat();
  d.eat();
}

// dart 沒有interface , 定義接口也需要使用abstract
// extends 以及 implements 差別:
// implements 需要自己實現父類所有屬性以及方法(已經定義過的依然需要重新定義)
// extends 不需要再去實現定義過的屬性以及方法。
abstract class Animal {
  int age = 1;
  walk();
  eat();
}

class Dog extends Animal {
  @override
  eat() {
    print("dog eat");
  }

  @override
  walk() {
    print("dog walk");
  }
}

class DeadDog implements Animal {
  @override
  eat() {
    print("dead dog can't eat");
  }

  @override
  walk() {
    print("dead dog can't walk");
  }

  @override
  int age = 2;
}

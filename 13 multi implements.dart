main(List<String> args) {
  A a = C();
  a.MOVE(); //定義為A接口的 只有MOVE方法
  B b = C();
  b.JUMP(); //定義為B接口的 只有JUMP方法
  C c = C();
  c.MOVE(); //定義為自己的 擁有MOVE以及JUMP方法
  c.JUMP();
  print(c is A); // true
  print(c is B); // true
  print(c is C); // true

  // mixins 與golang的組合相仿
  D d = D(); // 使用with只能拿到父類的屬性以及方法，但非繼承也非實現，定義時無法定義為父類
  d.MOVE();
  d.JUMP();

  // 混用組合以及繼承
  E f = F(10); // class F extends E with A, B
  print(f.e);
  print(f is A); // true
  print(f is C); // true
  print(f is E); // true
  print(f is F); // true
}

abstract class A {
  MOVE() {
    print("from A");
  }
}

abstract class B {
  JUMP() {
    print("from B");
  }
}

class C implements A, B {
  @override
  JUMP() {
    print("jump");
  }

  @override
  MOVE() {
    print("move");
  }
}

/*
  mixins:
  1. 作為mixins的類只能繼承自Object不能繼承其他類
  2. 作為mixins的類不能有構造函數
  3. 一個類可以mixins多個mixins類
  4. mixins不是繼承,也不是介面,而是一種全新的特性
  5. 重複定義相同屬性以及方法時,後面的定義者為主(繼承的屬性/方法也會被mixins覆蓋)
*/
class D with A, B {}

class E {
  int e = 0;
  E(int e) {
    this.e = e;
  }
}

class F extends E with A, B {
  // 繼承父類的構造函數必須相同
  F(int e) : super(e) {
    this.e = e + 1;
  }
}

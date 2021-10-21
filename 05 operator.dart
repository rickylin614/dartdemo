main(List<String> args) {
  // 算數運算符
  int a = 13;
  int b = 5;
  print("====算數運算符====");
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);
  print(a ~/ b); //取整數的除法

  // 關係運算符
  print("====關係運算符====");
  print(a == b);
  print(a != b);
  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);

  // 邏輯運算符
  bool c = true;
  bool d = false;
  print("====邏輯運算符====");
  print(c && d); // 且
  print(d || c); // 或
  print(c ^ d); // 互斥或 // 相同為false 不同為true

  // 位元運算符
  int e = int.parse("1100", radix: 2);
  int f = int.parse("1001", radix: 2);
  print("====位元運算符====");
  print((e & f).toRadixString(2));
  print((e | f).toRadixString(2));
  print((e ^ f).toRadixString(2));

  // 賦值運算符
  var g = null;
  g ??= 15; // 如果g為空則賦值 不為空則不動作
  int h = 10 + 1; // 一般賦值
  print('====賦值運算符====');
  print(g);
  print(h);
  // 復合賦值運算符
  g += 1; // 16
  g -= 1; // 15
  g *= 2; // 30
  g /= 3; // 10
  print(g);

  // 三位運算符
  int i = 10;
  print('====三位運算符====');
  print(i > 9 ? 99 : 5); // 條件符合則？後
  print(i > 11 ? 99 : 5); // 條件不符合則：後

  // ??運算符
  var j;
  var k = j ?? 10; // j 為空則給j 不為空則給10
  print('====??運算符====');
  print(k);
}

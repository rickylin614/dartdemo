main(List<String> args) {
  int a = 10;
  // number to string
  String b = a.toString();
  // string to number
  int c = int.parse(b);
  // string to double
  double d = double.parse(b);
  // double to string
  b = d.toString();
  // doublt to int
  c = d.toInt();
  // int to double
  d = c.toDouble();
  print("end");

  // as 類型轉換
  num a1 = 20;
  int b1 = a1 as int;
  a1 = 20.5;
  double b2 = a1 as double;
  print(b1);
  print(b2);
}

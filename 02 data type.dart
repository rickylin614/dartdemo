main(List<String> args) {
  // 字符串
  String str1 = 'str1: a';
  var str2 = 'str2: b';
  var str3 = "str3: \nd" + "f"; // 拼接直接用加號
  var str4 = '''str4: this
  is str4'''; // 多行定義
  var str5 = "str5: $str1 $str2"; // 錢字號將字串組在裡面

  // 數字類型
  int int1 = 1;
  double double1 = 3.14;

  // 布林類型
  bool flag = true;

  // List 集合類型
  var list1 = ["張三", 20, true]; // list1 = List<Ojbect>
  List<int> list2 = new List.empty();
  List<String> list3 = List.generate(10, (int index) => "$index");
  var list4 = <String>["$list1", list3[4]];

  // Map 字典類型
  var map1 = {"abc": 123, 123: "123"};
  Map<String, Object> map2 = {"abc": "asd", "ddd": 2.2};
  var map3 = new Map();
  map3["name"] = "張三";
  map3["age"] = 10;
  map3.remove("age");

  print(str1);
  print(str2);
  print(str3);
  print(str4);
  print(str5);
  print("int $int1");
  print("double $double1");
  print("bool $flag");
  print("list1 $list1");
  print("list2 $list2");
  print("list3 $list3");
  print("list4 $list4");
  print("map1 $map1");
  print("map2 $map2");
  print("map3 $map3");
}

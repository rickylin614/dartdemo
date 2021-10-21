main(List<String> args) {
  // List basic crud
  List<dynamic> demo = ["3", "4"];
  demo.add("1");
  print("demo $demo");
  demo[0] = "2";
  print("demo $demo");
  var d = demo.indexOf("4");
  print("demo $d");
  demo.removeAt(0);
  print("demo $demo");
  print(List.of(demo.reversed)); // reverse

  // List 函數運用

  // 指定值填滿長度
  List<int> list1 = List.filled(10, 5);
  // 快速創立空陣列
  List<int> list2 = List.empty();
  // 創建一般的動態陣列
  List<dynamic> list3 = [123, "dd", 999, 456.45, "123"];
  // 取過濾後的值 資料型態可變動
  List<int> list4 = List.from(list3.where((x) => x is int));
  // 產遞增
  List<int> list5 = List.generate(10, (index) => index * 2);
  // List<double> list6 = List.castFrom<int, double>(list1); // 自動轉換subtype
  // 取過濾後得值
  List<int> list7 = List.of(list5.where((element) => element % 4 == 0));
  // 創建不可修改的陣列值
  List<int> list8 = List.unmodifiable(list7.where((element) => true));

  print("list1 $list1");
  print("list2 $list2");
  print("list3 $list3");
  print("list4 $list4");
  print("list5 $list5");
  // print("list6 $list6");
  print("list7 $list7");
  print("list8 $list8");
  // list5的 5~(7-1) 資料 給list1的第二個位置開始
  List.copyRange<int>(list1, 2, list5, 5, 7);
  print("new list1 $list1");
  // 複製Iterable<T>給List<T>
  List.writeIterable(list1, 6, list8.where((element) => element % 8 == 0));
  print("new new list1 $list1");
}

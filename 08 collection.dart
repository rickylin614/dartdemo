main(List<String> args) {
  // 集合陣列
  List<int> iList = [5, 6, 7];
  var sList = <String>["9", "10", "11"];
  print("$iList $sList");
  print(iList.length);
  print(sList[2]);

  // 集合SET // 不重複 無序資料
  Set<int> set1 = new Set();
  set1.add(2);
  set1.add(1);
  set1.add(2);
  set1.add(3);
  print("set1 $set1");
  Set<int> set2 = new Set();
  set2.addAll(sList.map((e) => int.parse(e)));
  print("set2 $set2");
  Set<int> set3 = iList.toSet();
  print("set3 $set3");
  Set<int> set4 = new Set();
  set4.addAll([1, 2, 3, 4, 5, 6]);
  print("set4 $set4");

  // 集合字典
  var map1 = {"1": "1", "2": 2}; // map1 Map<String, Object>
  var map2 = {1: "2", 2: "3", 11: "4"}; // map2 Map<int, String>
  print("map1 $map1");
  print("map2 $map2");
  print(map2.keys.toString() + map2.values.toString()); // 直接取得key陣列 / value陣列
  map1["3"] = 4; // insert / update
  map1.remove("2"); // delete
  print("new map1 $map1");
}

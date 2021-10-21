/* 
  Null Safty, Flutter2.2.0(2021年5月19日發布) 之後的版本都要求使用null sftery
  Null Safty 空安全,幫助開發者避免一些日常開發中很難被發現的錯誤,額外的好處是可改善性能
  ? 可空類型
  ! 類型斷言
*/

main(List<String> args) {
  int a = 123;
  // a ?= 456; // 無法使用?= int在定義後就不可為空
  print(a);
  int? b = 123; // 可為空的int
  b = null;
  print(b);
  b ??= 999;
  print(b);

  String? str = null;
  print(str?.length);
  try {
    print(str!.length); // Null check operator used on a null value
    // ! 斷言
    // str為空 則拋出異常
    // str不為空 打印長度
  } catch (err) {
    print(err);
  }

  R r = new R(b: 10);
  r.SetDatas("a", b: 123, c: "c"); // 必須給b以及c的值
  r.SetDatas2("a"); //不必須給b以及c的值
  print(r.b);
}

class R {
  // late關鍵詞 用於延遲初始化屬性 -- 沒指定初始化的屬性 必須添加late表示初始化時機點比較晚
  late int b;
  // 可為空的字串(因為可為空 不必要初始化)
  String? c;

  // required關鍵詞 標記任何命名參數 是他們不得為空
  SetDatas(String a, {required int b, required String c}) {
    // do something
  }
  // b以及c不給的情況 則為指定值
  SetDatas2(String a, {int b = 99, String c = "OAO"}) {
    // do something
  }
  R({required this.b, this.c}); // 建構時自動給予內部屬性
}

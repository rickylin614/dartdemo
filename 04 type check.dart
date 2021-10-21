void main(List<String> args) {
  // is 關鍵詞判斷類型
  var a = 0;
  var b = 0.0;
  if (a is int) {
    print("a is int");
  }
  if (b is int) {
    print("b is int");
  }
}

import "dart:io";

main(List<String> args) {
  // for
  for (int i = 1; i < 10; i++) {
    stdout.write(i);
  }
  print("");

  // while
  int i = 0;
  while (i < 10) {
    i++;
    stdout.write(i);
  }
  print("");

  // do -- while
  do {
    i--;
    stdout.write(i);
  } while (i > 0);
  print("");

  // list foreach
  List<int> iList = [5, 4, 3, 2, 1];
  iList.forEach((element) {
    stdout.write(element);
  });
  print("");

  // Map foreach
  Map<String, Object> a = {"key1": "value1", "key2": 2};
  a.forEach((key, value) {
    print("key: $key,value: $value");
  });
}

main(List<String> args) {
  print(getData(123)); //傳什麼返回什麼
  print(getData<String>('123')); //指定泛型只能傳字串
  A<int> a = new A();
  print(a.getData(123)); // <T>被定義為int,這邊只能接收int數據

  //泛型接口
  B<String> c = new C();
  c.setData("123");
  print(c.getData());
}

// 泛型方法
T getData<T>(T value) {
  return value;
}

// 泛型類
class A<T> {
  T getData(T value) {
    return value;
  }
}

// 泛型接口
abstract class B<T> {
  late T data;
  T move(T value);
  void setData(T value);
  T getData();
}

// 繼承泛型接口
class C<T> extends B<T> {
  @override
  move(value) {
    return value;
  }

  @override
  getData() {
    return data;
  }

  @override
  void setData(value) {
    data = value;
  }
}

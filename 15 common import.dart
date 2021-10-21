/*
Dart主要的庫有三種:
  1. 自定義的庫
    import 'lib/xxx.dart';
  2. 系統內置庫
    import 'dart:math';
    import 'dart:io';
    import 'dart:convert';
  3. Pub包管理系統中的庫 (可在下列網站中搜尋)
    https://pub.dev/packages
    https://pub.flutter-io.cn/packages
    https://pub.dartlang.org/flutter
    
    使用說明:
    1. 自己項目的根目錄創建一個pubspec.yaml
    2. 在pubspec.yaml文件 配置名稱,描述,依賴等信息
    3. 運行pub get獲取包下載到本地 
    4. 按照文檔說明將項目中引入庫import 'package:http/http.dart' as http;
    
    5. 輸入dart pub add http / flutter pub add http將會自動添加到pubspec.yaml裡面

*/
import 'package:http/http.dart' as http;
import 'dart:convert';

main(List<String> args) async {
  var url =
      Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

import 'package:flutter/material.dart';
import 'package:flutterlearn2/pages/FirstPage.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '路由跳转效果',
      theme: ThemeData(primaryColor: Colors.blue),
      home: FirstPage(),
    );
  }
}

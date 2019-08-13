import 'package:flutter/material.dart';
import 'package:flutterlearn2/pages/BottomAppBarDemo.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '不规则导航栏',
      theme: ThemeData(primaryColor: Colors.lightBlue),
      home: BottomAppBarDemo(),
    );
  }
}

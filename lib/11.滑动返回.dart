import 'package:flutter/material.dart';
import 'package:flutterlearn2/pages/right_back_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '右划返回',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: RightBackDemo(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterlearn2/pages/wrap_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '流式布局',
      theme: ThemeData.light(),
      home: WrapDemo(),
    );
  }
}

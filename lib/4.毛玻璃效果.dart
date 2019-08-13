import 'package:flutter/material.dart';
import 'package:flutterlearn2/pages/frosted_glass_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '毛玻璃效果',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: FrostedGlassDemo(),
      ),
    );
  }
}

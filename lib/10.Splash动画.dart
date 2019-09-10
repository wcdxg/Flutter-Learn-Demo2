import 'package:flutter/material.dart';
import 'package:flutterlearn2/pages/splash_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash动画',
      theme: ThemeData(
        primaryColor: Colors.blue.shade200
      ),
      home: SplashDemo(),
      //关闭debug标识
      debugShowCheckedModeBanner: false,
    );
  }
}

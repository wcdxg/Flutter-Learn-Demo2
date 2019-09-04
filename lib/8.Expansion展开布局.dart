import 'package:flutter/material.dart';
import 'package:flutterlearn2/pages/expansion_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expand展开',
      theme: ThemeData.dark(),
      home: ExpansionTileDemo(),
    );
  }
}

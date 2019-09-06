import 'package:flutter/material.dart';
import 'package:flutterlearn2/pages/expansion_panel_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '可以展开的List',
      theme: ThemeData.light(),
      home: ExpansionPanelListDemo(),
    );
  }
}

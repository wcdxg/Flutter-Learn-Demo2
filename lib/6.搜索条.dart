import 'package:flutter/material.dart';
import 'package:flutterlearn2/pages/search_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SearchBar',
      theme: ThemeData.light(),
      home: SearchBarDemo(),
    );
  }
}

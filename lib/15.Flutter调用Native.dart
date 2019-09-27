import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _homePageContent = '正在获取数据';
  static const String C_NAME = "com.flutter/call_native";
  static const platform = const MethodChannel(C_NAME);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('调用Native'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () async {
//              String result = await platform.invokeMethod("call_native_method");
              String result = await platform.invokeMethod("getBattery");
              setState(() {
                _homePageContent = result;
              });
            },
            child: Text('调用Android Native'),
          ),
          Text(_homePageContent),
        ],
      )),
    );
  }
}

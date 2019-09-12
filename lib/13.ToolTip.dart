import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toast Demo',
      theme: ThemeData.light(),
      home: ToolTipDemo(),
    );
  }
}

class ToolTipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tool Tip Demo'),
        ),
        body: Center(
            child: Tooltip(
          message: '啊啊啊啊啊，点我了',
          child: Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568202645917&di=f446c6d67875c9552eeb623f3a32f7d0&imgtype=0&src=http%3A%2F%2Fi2.hdslb.com%2Fbfs%2Fface%2Fdb7a3b40ca350cae14db264758af46867f8e8499.jpg'),
        )));
  }
}

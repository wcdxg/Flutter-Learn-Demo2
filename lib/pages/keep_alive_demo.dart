import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with AutomaticKeepAliveClientMixin {

  //AutomaticKeepAliveClientMixin  保存页面状态

  int _count = 0;

  //保存页面状态不销毁
  @override
  bool get wantKeepAlive => true;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text('点一次增加1'), Text('$_count')],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _increment();
        },
        tooltip: '点击增加',
        child: Icon(Icons.add),
      ),
    );
  }
}

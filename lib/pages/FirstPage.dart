import 'package:flutter/material.dart';
import 'package:flutterlearn2/pages/custom_router.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'FirstPage',
          style: TextStyle(fontSize: 36),
        ),
        elevation: 0,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.push(context, CustomRoute(SecondPage()));
          },
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64,
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text(
          'SecondPage',
          style: TextStyle(fontSize: 36),
        ),
        elevation: 0,
        leading: Container(),
        //返回页面的的箭头
        centerTitle: true,
        //居中AppBar文字
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterlearn2/pages/keep_alive_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KeepAliveDemo(),
    );
  }
}

class KeepAliveDemo extends StatefulWidget {
  @override
  _KeepAliveDemoState createState() => _KeepAliveDemoState();
}

class _KeepAliveDemoState extends State<KeepAliveDemo>
    with SingleTickerProviderStateMixin {
  //SingleTickerProviderStateMixin  实现 Tab 的动画切换效果

  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keep Alive Demo'),
        bottom: TabBar(controller: _tabController, tabs: [
          Tab(icon: Icon(Icons.directions_bike)),
          Tab(icon: Icon(Icons.directions_bus)),
          Tab(icon: Icon(Icons.directions_railway))
        ]),
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        MyHomePage(),
        MyHomePage(),
        MyHomePage(),
      ]),
    );
  }
}

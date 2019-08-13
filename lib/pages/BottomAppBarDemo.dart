import 'package:flutter/material.dart';
import 'package:flutterlearn2/pages/each_view.dart';

//void main() => runApp(BottomAppBarDemo());

class BottomAppBarDemo extends StatefulWidget {
  @override
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  List<Widget> _eachView;
  int _index = 0;

  @override
  void initState() {
    _eachView = List()..add(EachView('Home'))..add(EachView('Shopping'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return EachView('New Page2');
          }));
//          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//            return EachView('New Page');
//          }));
        },
        tooltip: '添加内容',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

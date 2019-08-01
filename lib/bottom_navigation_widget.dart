import 'package:flutter/material.dart';

import 'pages/email.dart';
import 'pages/home.dart';
import 'pages/shopping.dart';

void main() => runApp(BottomNavigationWidget());

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.redAccent;
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    list..add(Home())..add(Shopping())..add(Email());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _bottomNavigationColor,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: _bottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: _bottomNavigationColor,
              ),
              title: Text(
                'Shopping',
                style: TextStyle(color: _bottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.gamepad,
                color: _bottomNavigationColor,
              ),
              title: Text(
                'Page',
                style: TextStyle(color: _bottomNavigationColor),
              )),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

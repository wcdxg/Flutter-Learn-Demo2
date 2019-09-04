import 'package:flutter/material.dart';

class WrapDemo extends StatefulWidget {
  @override
  _WrapDemoState createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  List<Widget> list;

  @override
  void initState() {
    super.initState();
    list = List<Widget>()..add(buildAddButton());
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('流式布局'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: _width,
            height: _height / 2,
            color: Colors.grey,
            child: Wrap(
              children: list,
              spacing: 26,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAddButton() {
    return GestureDetector(
      onTap: () {
        if (list.length < 9) {
          setState(() {
            list.insert(list.length - 1, buildPhoto());
          });
        } else {
          setState(() {
            list.removeRange(0, list.length - 1);
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          width: 80,
          height: 80,
          color: Colors.black54,
          child: Icon(Icons.add_a_photo),
        ),
      ),
    );
  }

  Widget buildPhoto() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: 80,
        height: 80,
        color: Colors.blue,
        child: Center(
          child: Text('照片'),
        ),
      ),
    );
  }
}

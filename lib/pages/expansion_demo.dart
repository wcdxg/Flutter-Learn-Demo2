import 'package:flutter/material.dart';

void main() => runApp(ExpansionTileDemo());

class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expand Demo'),
      ),
      body: Center(
        child: ExpansionTile(
            title: Text('Expansion Tile'),
            leading:Icon(Icons.android),
          backgroundColor: Colors.white12,
          children: <Widget>[
            ListTile(
              title: Text('List Tile'),
              subtitle: Text('subtitle'),
            )
          ],
      ),
    ),);
  }
}

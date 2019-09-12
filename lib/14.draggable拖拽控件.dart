import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Draggable Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DraggableDemo(),
    );
  }
}

class DraggableDemo extends StatefulWidget {
  @override
  _DraggableDemoState createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  Color _draggableColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DraggableWidget(
            offset: Offset(80, 80),
            widgetColor: Colors.tealAccent,
          ),
          DraggableWidget(
            offset: Offset(200, 80),
            widgetColor: Colors.redAccent,
          ),
          Center(
            //接收Draggable传过来的data: widget.widgetColor,
            child: DragTarget(onAccept: (Color color) {
              _draggableColor = color;
            }, builder: (context, candidateData, rejectedData) {
              return Container(
                width: 200,
                height: 200,
                color: _draggableColor,
              );
            }),
          )
        ],
      ),
    );
  }
}

class DraggableWidget extends StatefulWidget {
  final Offset offset;
  final Color widgetColor;

  DraggableWidget({Key key, this.offset, this.widgetColor}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  Offset offset = Offset(0, 0);

  @override
  void initState() {
    super.initState();
    offset = widget.offset;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: offset.dx,
        top: offset.dy,
        child: Draggable(
          data: widget.widgetColor,
          child: Container(
            width: 100,
            height: 100,
            color: widget.widgetColor,
          ),
          //拖动的时候显示的控件
          feedback: Container(
            width: 100,
            height: 100,
            color: widget.widgetColor.withOpacity(0.5),
          ),
          //松开手的时候设置位置
          onDraggableCanceled: (Velocity velocity, Offset offset) {
            setState(() {
              this.offset = offset;
            });
          },
        ));
  }
}

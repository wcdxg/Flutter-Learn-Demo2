import 'package:flutter/material.dart';

class SplashDemo extends StatefulWidget {
  @override
  _SplashDemoState createState() => _SplashDemoState();
}

class _SplashDemoState extends State<SplashDemo>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 3000),
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    _animation.addStatusListener((status) => {
          if (status == AnimationStatus.completed)
            {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                  (route) => route == null)
            }
        });
    _controller.forward(); //播放动画
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network(
        'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3836552093,4033521760&fm=26&gp=0.jpg',
        scale: 2,
        fit: BoxFit.cover,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyHomePage'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('My Home Page'),
      ),
    );
  }
}

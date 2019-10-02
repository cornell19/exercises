import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offset;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 15),
    );

    _offset = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(3, -10),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceInOut,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter in Motion'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: () {
              if (_controller.status == AnimationStatus.dismissed) {
                _controller.forward();
                return;
              }
              _controller.reverse();
            },
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            bottom: 40,
            left: 30,
            child: SlideTransition(
              position: _offset,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}

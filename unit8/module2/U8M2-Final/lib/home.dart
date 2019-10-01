import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _opacity = 0.0;
  double _height = 0;
  double _fontSize = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter in Motion'),
        actions: <Widget>[
          IconButton(
            iconSize: 50,
            icon: Icon(Icons.arrow_right),
            onPressed: () => setState(() {
              _height = 200;
              _opacity = 1.0;
              _fontSize = 50.0;
            }),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            AnimatedContainer(
              alignment: Alignment.center,
              duration: Duration(seconds: 5),
              height: _height,
              color: Colors.red,
              child: const Text(
                'Container',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            AnimatedDefaultTextStyle(
              style: TextStyle(
                fontSize: _fontSize,
                color: Colors.green,
              ),
              duration: Duration(seconds: 8),
              child: Text('Animated'),
            ),
            AnimatedOpacity(
              duration: Duration(seconds: 2),
              opacity: _opacity,
              child: Container(
                height: 100,
                margin: EdgeInsets.only(bottom: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Opacity',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

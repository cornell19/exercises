import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    //initialize the AnimationController
    //and animation
  }

  @override
  void dispose() {
    super.dispose();
    //dispose of the AnimationController
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
              //check the status of the controller and
              //determine whether to run forward or reverse
            },
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            bottom: 40,
            left: 30,
            child: const Text('Add the box here'),
          ),
        ],
      ),
    );
  }
}

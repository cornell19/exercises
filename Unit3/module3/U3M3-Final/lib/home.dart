import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter In Motion'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => {},
          )
        ],
      ),
      body: Center(
        child: const Text(
          'I Love Flutter',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}

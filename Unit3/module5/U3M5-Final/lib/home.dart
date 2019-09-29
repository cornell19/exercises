import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Flutter in Motion'),
        backgroundColor: Color.fromRGBO(30, 150, 243, 1),
        trailing: CupertinoButton(
          child: Icon(
            CupertinoIcons.add,
            color: Colors.white,
          ),
          onPressed: () => {},
        ),
      ),
      child: Center(
        child: Text(
          'I love Flutter',
          style: TextStyle(
            fontSize: 40,
            color: Color.fromRGBO(30, 150, 243, 1),
          ),
        ),
      ),
    );
  }
}

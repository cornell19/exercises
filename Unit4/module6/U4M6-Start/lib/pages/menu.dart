import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50),
              height: 50,
              child: const Text('MENU'),
            ),
            //Add the Menu items
          ],
        ),
      ),
    );
  }
}

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
            ListTile(
              title: const Text('Page1'),
              onTap: () => Navigator.of(context).pushNamed('/page1'),
            ),
            ListTile(
              title: const Text('Page2'),
              onTap: () => Navigator.of(context).pushNamed('/page2'),
            ),
            ListTile(
              title: const Text('Page3'),
              onTap: () => Navigator.of(context).pushNamed('/page3'),
            ),
          ],
        ),
      ),
    );
  }
}

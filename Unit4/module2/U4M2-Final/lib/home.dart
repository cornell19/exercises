import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter in Motion'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(color: Colors.green, boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  offset: Offset(5, 5),
                ),
              ]),
            ),
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.blue,
                      Colors.lightBlue,
                      Colors.blueGrey,
                      Colors.grey,
                    ],
                    stops: [
                      0.75,
                      0.85,
                      0.95,
                      1.0
                    ]),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

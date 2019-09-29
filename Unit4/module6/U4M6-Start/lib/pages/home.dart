import 'package:flutter/material.dart';
import 'package:unit_4_module_6/pages/menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter in Motion'),
      ),
      drawer: Menu(),
      body: Center(
        child: const Text('Click the Menu Button'),
      ),
    );
  }
}

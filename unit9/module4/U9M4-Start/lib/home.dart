import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_9_module_4/bloc/bloc.dart';
import 'package:unit_9_module_4/bloc/contact.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<Bloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter in Motion'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              bloc.addContact();
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: const Text('Add Stream Builder'),
      ),
    );
  }
}

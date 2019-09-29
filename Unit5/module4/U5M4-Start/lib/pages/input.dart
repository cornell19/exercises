import 'package:flutter/material.dart';
import 'package:unit_5_module_4/apis/inputs_apis.dart';

class Input extends StatefulWidget {
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              /* once the data is validated and saved to the map,
               * uncomment the code below to add the record to the
               * mock api
               */

              // InputApis().add(_data);

              Navigator.of(context).pop();
            },
          )
        ],
      ),
      body: const Text('add the form here'),
    );
  }
}

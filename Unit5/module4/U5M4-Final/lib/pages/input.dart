import 'package:flutter/material.dart';
import 'package:unit_5_module_4/apis/inputs_apis.dart';

class Input extends StatefulWidget {
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  Map<String, dynamic> _data = Map<String, dynamic>();
  GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              if (!_key.currentState.validate()) return;
              _key.currentState.save();
              InputApis().add(_data);
              Navigator.of(context).pop();
            },
          )
        ],
      ),
      body: Form(
        key: _key,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'First Name'),
                validator: (String value) {
                  if (value.isEmpty) return 'Required';
                },
                onSaved: (String value) => _data['firstName'] = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Last Name'),
                validator: (String value) {
                  if (value.isEmpty) return 'Required';
                },
                onSaved: (String value) => _data['lastName'] = value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

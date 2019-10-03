import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_9_module_4/bloc/bloc.dart';
import 'package:unit_9_module_4/home.dart';

void main() => runApp(
      Provider<Bloc>(
        builder: (_) => Bloc(),
        dispose: (_, value) => value.dispose(),
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: Home()),
      ),
    );

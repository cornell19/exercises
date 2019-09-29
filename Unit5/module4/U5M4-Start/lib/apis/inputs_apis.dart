import 'dart:async';

import 'package:unit_5_module_4/apis/contact_module.dart';

class InputApis {
  List<Contact> _contacts;
  StreamController<List<Contact>> _stream;
  static final InputApis _singleton = new InputApis._internal();
  factory InputApis() => _singleton;

  InputApis._internal() {
    _stream = StreamController<List<Contact>>();
    _contacts = List<Contact>();
  }

  void add(Map<String, dynamic> map) {
    _contacts.add(Contact.fromMap(map));
    _stream.sink.add(_contacts);
  }

  Stream<List<Contact>> get contacts => _stream.stream;

  void dispose() {
    _stream.close();
  }
}

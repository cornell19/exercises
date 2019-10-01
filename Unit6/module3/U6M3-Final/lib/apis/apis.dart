import 'dart:async';

import 'package:unit_6_module_3/apis/contact.dart';

class Apis {
  List<Contact> _contacts;

  static final Apis _singleton = new Apis._internal();
  factory Apis() => _singleton;

  Apis._internal() {
    _contacts = List<Contact>();
    _contacts.add(Contact(
        'https://upload.wikimedia.org/wikipedia/en/thumb/8/87/KaraThrace.jpg/220px-KaraThrace.jpg',
        'Kara',
        'Thrace'));
    _contacts.add(Contact(
        'https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Baltar_Season_3.jpg/220px-Baltar_Season_3.jpg',
        'Gaius',
        'Baltar'));
    _contacts.add(Contact(
        'https://upload.wikimedia.org/wikipedia/en/9/98/WilliamAdama.jpg',
        'William',
        'Adama'));
    _contacts.add(Contact(
        'https://upload.wikimedia.org/wikipedia/en/thumb/3/37/LeeAdama.jpg/220px-LeeAdama.jpg',
        'Lee',
        'Adama'));
    _contacts.add(Contact(
        'https://upload.wikimedia.org/wikipedia/en/thumb/a/ac/Dualla_Season_3.jpg/250px-Dualla_Season_3.jpg',
        'Anastasia',
        'Dualla'));
    _contacts.add(Contact(
        'https://upload.wikimedia.org/wikipedia/en/thumb/0/05/LauraRoslin.jpg/220px-LauraRoslin.jpg',
        'Lauren',
        'Roslin'));
    _contacts.add(Contact(
        'https://i.pinimg.com/236x/02/7a/62/027a62e4b1a787409e4c09590c4bffec--movie-characters-fictional-characters.jpg',
        'Saul',
        'Tigh'));
    _contacts.add(Contact(
        'https://upload.wikimedia.org/wikipedia/en/thumb/c/c5/GalenTyrol.jpg/220px-GalenTyrol.jpg',
        'Galen',
        'Tyrol'));
    _contacts.add(Contact(
        'https://upload.wikimedia.org/wikipedia/en/thumb/b/be/Gaeta_Season_3.jpg/220px-Gaeta_Season_3.jpg',
        'Felix',
        'Gaeta'));
  }

  Future<List<Contact>> retrieve() async {
    await Future.delayed(Duration(seconds: 2));
    return _contacts;
  }
}

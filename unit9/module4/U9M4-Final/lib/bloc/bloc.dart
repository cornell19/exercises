import 'package:rxdart/rxdart.dart';
import 'package:unit_9_module_4/bloc/contact.dart';

List<Contact> list = [
  Contact('Kara', 'Thrace'),
  Contact('Gaius', 'Baltar'),
  Contact('William', 'Adama'),
  Contact('Lee', 'Adama'),
  Contact('Anastasia', 'Dualla'),
  Contact('Lauren', 'Roslin'),
  Contact('Saul', 'Tigh'),
  Contact('Galen', 'Tyrol'),
  Contact('Felix', 'Gaeta')
];

class Bloc {
  var _index = 0;
  BehaviorSubject<List<Contact>> _contactsBehavSub;
  Bloc() {
    _contactsBehavSub = BehaviorSubject<List<Contact>>();
  }

  Observable<List<Contact>> get contacts => _contactsBehavSub.stream;

  void addContact() {
    if (_index == 9) {
      _index = 0;
    }
    _index++;

    var group = list.take(_index).toList();
    _contactsBehavSub.sink.add(group);
  }

  void dispose() {
    _contactsBehavSub.close();
  }
}

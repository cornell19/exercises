import 'package:flutter/material.dart';
import 'package:unit_5_module_4/apis/contact_module.dart';
import 'package:unit_5_module_4/apis/inputs_apis.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter in Motion'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => Navigator.of(context).pushNamed('/input'),
            ),
          ],
        ),
        body: StreamBuilder<List<Contact>>(
          stream: InputApis().contacts,
          builder: (_, AsyncSnapshot<List<Contact>> snapshot) {
            if(!snapshot.hasData)return Container();
            var contacts = snapshot.data;
            return ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (_, int index) {
                  var contact = contacts[index];
                  return ListTile(
                    title: Text(contact.fullName),
                  );
                });
          },
        ));
  }
}

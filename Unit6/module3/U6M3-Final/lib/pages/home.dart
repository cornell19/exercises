import 'package:flutter/material.dart';
import 'package:unit_6_module_3/apis/apis.dart';
import 'package:unit_6_module_3/apis/contact.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter in Motion'),
      ),
      body: FutureBuilder<List<Contact>>(
        future: Apis().retrieve(),
        builder: (_, AsyncSnapshot<List<Contact>> snapshot) {
          if (snapshot.hasError)
            return Center(
              child: Text(snapshot.error.toString()),
            );

          if (!snapshot.hasData)
            return Center(
              child: CircularProgressIndicator(),
            );

          var contacts = snapshot.data;

          if (contacts.length == 0)
            return Center(
              child: const Text('No Records'),
            );

          return ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (_, int index) {
              var contact = contacts[index];
              return Container(
                margin: EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Image.network(contact.url),
                  title: Text(contact.fullName),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

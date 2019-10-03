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
        child: StreamBuilder<List<Contact>>(
          stream: bloc.contacts,
          builder: (_, AsyncSnapshot<List<Contact>> snapshot) {
            if (snapshot.hasError)
              return Center(
                child: Text(snapshot.error.toString()),
              );

            if (!snapshot.hasData)
              return Center(
                child: const Text('Click the + to add contacts.'),
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
                return ListTile(
                  title: Text(contact.fullName),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

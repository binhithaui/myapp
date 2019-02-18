import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:myapp/contactmanager/ContactManager.dart';

class ListContactView extends StatefulWidget {
  final Iterable<Contact> datas;

  const ListContactView({Key key, this.datas}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ListContactState();
  }
}

class ListContactState extends State<ListContactView> {
  Iterable<Contact> _contacts;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _refreshContact();
  }

  _refreshContact() async {
    Iterable<Contact> data = await ContactsService.getContacts();
    setState(() {
      _contacts = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SafeArea(
        child: _contacts != null
            ? new ListView(
                children: _buildItemContact(),
              )
            : Center(
                child: CircularProgressIndicator(),
              ));
  }

  Widget _avatar(Contact c) {
    if (c.avatar != null && c.avatar.length > 0) {
      return new CircleAvatar(backgroundImage: MemoryImage(c.avatar));
    } else {
      return new CircleAvatar(
        child: new Text(
            c.displayName.length > 1 ? c.displayName.substring(0, 2) : ""),
      );
    }
  }

  Widget _name(Contact c) {
    return new Text(c.displayName != null ? c.displayName : "");
  }

  Widget _phone(Contact c) {
    return new ListView.builder(
        itemCount: c.phones.length + 1,
        itemBuilder: (context, index) {
          if (index == 1) {
            return new Text(c.phones.toString());
          } else {
            return new Text(c.phones.toList()[index].toString());
          }
        });
  }

  List<Container> _buildItemContact() {
    int index = 0;

    return _contacts.map((contact) {
      var container = Container(
        decoration: index % 2 == 0
            ? new BoxDecoration(color: Colors.white)
            : new BoxDecoration(color: Colors.black26),
        child: new Row(
          children: <Widget>[
            _avatar(contact),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[_name(contact), _phone(contact)],
            )
          ],
        ),
      );
      index = index + 1;
      return container;
    }).toList();
  }
}

import 'package:contacts_service/contacts_service.dart';

Future<Iterable<Contact>> getAllContact() async{
  return await ContactsService.getContacts();
}
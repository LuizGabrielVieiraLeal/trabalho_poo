import '../classes/contact.dart';

abstract class ISchedule {
  void createContact(var name, var phone, {var address, var relationship});
  void listContacts();
  void searchContact(var name);
  void updateContact(var id, var name, var phone, {var address, var relationship});
  void deleteContact(var id);
}

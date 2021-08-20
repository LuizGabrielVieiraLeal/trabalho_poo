import '../classes/contact.dart';

abstract class ISchedule {
  void createContact(var name, var phone);
  void listContacts();
  void searchContact(var name);
  void updateContact(var id, var name, var phone);
  void deleteContact(var id);
}

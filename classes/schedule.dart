import 'dart:io';
import 'phonebook.dart';
import 'contact.dart';
import '../interfaces/ischedule.dart';

class Schedule extends PhoneBook implements ISchedule {
  void createContact(var name, var phone, {var address, var relationship}) {
    final Contact contact = Contact(
        (this.contacts.length + 1).toString(), name, phone,
        address: address, relationship: relationship);
    this.contacts.add(contact);
  }

  void listContacts() {
    if (this.contacts.isNotEmpty) {
      this.contacts.forEach((contact) {
        stdout.writeln(contact.toString());
      });
    } else {
      stdout.writeln('Sua lista de contatos está vazia.');
    }
  }

  void searchContact(var name) {
    var found = this
        .contacts
        .where((contact) => contact.name.toLowerCase() == name.toLowerCase());

    if (found.isNotEmpty) {
      found.forEach((contact) {
        stdout.writeln(contact.toString());
      });
    } else {
      stdout.writeln('Nenhum contato encontrado.');
    }
  }

  void updateContact(var id, var name, var phone,
      {var address, var relationship}) {
    this.contacts.forEach((contact) {
      if (contact.id == id) {
        contact.setName(name);
        contact.setPhone(phone);
        contact.setAddress(address);
        contact.setRelationship(relationship);
      }
    });
  }

  void deleteContact(var id) {
    this.contacts.removeWhere((contact) => contact.id == id);
  }
}

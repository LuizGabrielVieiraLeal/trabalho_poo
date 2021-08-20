import '../interfaces/icontact.dart';
import 'address.dart';

class Contact extends Address implements IContact {
  String id = '';
  String name = '';
  String phone = '';
  String relationship = '';

  Contact(var id, var name, var phone, {var address, var relationship}) {
    this.id = id;
    this.name = name;
    this.phone = phone;
    this.address = address;
    this.relationship = relationship;
  }

  String getName() {
    return this.name;
  }

  void setName(name) {
    this.name = name;
  }

  String getPhone() {
    return this.phone;
  }

  void setPhone(phone) {
    this.phone = phone;
  }

  String getAddress() {
    return this.address;
  }

  void setAddress(address) {
    this.address = address;
  }

  String getRelationship() {
    return this.relationship;
  }

  void setRelationship(relationship) {
    this.relationship = relationship;
  }

  @override
  String toString() {
    return "Id: $id - Nome: $name - Telefone: $phone - Endereço: $address - Relação: $relationship";
  }
}

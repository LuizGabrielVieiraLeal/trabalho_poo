import '../interfaces/icontact.dart';

class Contact implements IContact {
  String id = '';
  String name = '';
  String phone = '';

  Contact(var id, {var name, var phone}) {
    this.id = id;
    this.name = name;
    this.phone = phone;
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

  @override
  String toString() {
    return "Id: $id - Nome: $name - Telefone: $phone";
  }
}

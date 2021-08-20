import 'dart:io';
import 'classes/schedule.dart';

void main() {
  bool exec = true;
  Schedule schedule = Schedule();

  while (exec) {
    showMenu();

    var action = stdin.readLineSync();

    switch (action) {
      case '1':
        stdout.writeln('Digite o nome do contato:');
        var name = stdin.readLineSync();
        stdout.writeln('Digite o telefone do contato:');
        var phone = stdin.readLineSync();
        stdout.writeln('Digite o endereço do contato:');
        var address = stdin.readLineSync();
        stdout.writeln('Qual sua relação com o contato:');
        var relationship = stdin.readLineSync();
        schedule.createContact(name, phone, address: address, relationship: relationship);
        break;
      case '2':
        schedule.listContacts();
        break;
      case '3':
        stdout.writeln('Digite o nome do contato que deseja encontrar:');
        var name = stdin.readLineSync();
        schedule.searchContact(name);
        break;
      case '4':
        stdout.writeln('Digite o id do contato que deseja alterar:');
        var id = stdin.readLineSync();
        stdout.writeln('Digite o novo nome do contato:');
        var name = stdin.readLineSync();
        stdout.writeln('Digite o novo telefone do contato:');
        var phone = stdin.readLineSync();
        stdout.writeln('Digite o novo endereço do contato:');
        var address = stdin.readLineSync();
        stdout.writeln('Qual a nova relação com o contato:');
        var relationship = stdin.readLineSync();
        schedule.updateContact(id, name, phone, address: address, relationship: relationship);
        break;
      case '5':
        stdout.writeln('Digite o id do contato que deseja remover:');
        var id = stdin.readLineSync();
        schedule.deleteContact(id);
        break;
      case '0':
        exec = false;
        break;
      default:
        stdout.writeln('Selecione uma operação válida.');
        break;
    }
  }
}

void showMenu() {
  stdout.writeln('---------- Agenda telefônica ----------');
  stdout.writeln('1 - Criar contato');
  stdout.writeln('2 - Listar contatos');
  stdout.writeln('3 - Procurar contato');
  stdout.writeln('4 - Atualizar contato');
  stdout.writeln('5 - Remover contato');
  stdout.writeln('0 - Sair');
  stdout.writeln('---------------------------------------');
}

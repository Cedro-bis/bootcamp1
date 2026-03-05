import 'package:bootcamp1/data/models/contact_model.dart';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ContactsDatabase {
  static ContactsDatabase instance = ContactsDatabase._init();

  Database? _db;
  ContactsDatabase._init();

  Future<Database?> get db async {
    if (_db == null) {
      _db = await _initialDb();
      return _db;
    } else {
      return _db;
    }
  }

  Future<Database> _initialDb() async {
    String db_path = await getDatabasesPath();
    String path = join(db_path, 'contact.db');
    Database mydata = await openDatabase(path, onCreate: _createDb, version: 1);
    return mydata;
  }

  _createDb(Database data, int version) async {
    data.execute('''
    CREATE TABLE contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    surname TEXT,
    number TEXT,
    email TEXT,
    adress TEXT,
    company TEXT,
    birthday TEXT,
    isFavorite INTEGER
    )
    ''');
  }

  // ================CRUD===============
  Future<ContactModel> createData(ContactModel contact) async {
    final mydb = await instance.db;
    final int reponse = await mydb!.insert(
      'contacts',
      contact.toMap(includeId: false),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    return ContactModel(
      // Explication
      id: reponse.toString(),
      name: contact.name,
      surname: contact.surname,
      number: contact.number,
      email: contact.email,
      adress: contact.adress,
      company: contact.company,
      birthday: contact.birthday,
      isFavotite: contact.isFavotite,
    );
  }

  Future<List<ContactModel>> readData() async {
    final mydb = await instance.db;
    List<Map<String, dynamic>> reponse = await mydb!.query('contacts');
    return List.generate(reponse.length, (index) {
      // Explication
      return ContactModel.fromMap(reponse[index]);
    });
  }

  Future<void> updateData(ContactModel contact) async {
    final mydb = await instance.db;
    await mydb!.update(
      'contacts',
      contact.toMap(),
      where: 'id = ?',
      whereArgs: [int.tryParse(contact.id) ?? contact.id],
    );
  }

  Future<void> deleteData(String id) async {
    final mydb = await instance.db;
    await mydb!.delete('contacts', where: 'id = ?', whereArgs: [id]);
  }
}

List<ContactModel> localContactsData = []; // Besoin d'explication

Future<void> loadContacts() async {
  final contacts = await ContactsDatabase.instance.readData();
  localContactsData = contacts;
}

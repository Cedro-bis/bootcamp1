import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDatabase {
  static Database? _db;
  Future<Database?> get db async {
    if (_db == null) {
      _db = await initialisation();
      return _db;
    } else {
      return _db;
    }
  }

  // initialisation de la BD
  Future<Database> initialisation() async {
    String db_path = await getDatabasesPath();
    String path = join(db_path, 'Contact');
    Database mydb = await openDatabase(
      path,
      onCreate: _createDatabase,
      version: 1,
    );
    return mydb;
  }

  _createDatabase(Database data, int version) async {
    await data.execute('''
      CREATE TABLE "Contacts"(
      "id" INTEGER PRIMARY KEY AUTOINCREMENT,
      "name" TEXT NOT NULL,
      "surname" TEXT NOT NULL,
      "number" TEXT NOT NULL,
      "email" TEXT NOT NULL,
      "adress"TEXT NOT NULL,
      "company" TEXT NOT NULL,
      "birthday" TEXT NOT NULL
      )
    ''');
  }

  // ce que nous venons de faire ce c'est qui est très crucial
  //pour la formalisation de la base de données.
  //il reste alors la création des méthodes pour le CRUD

  // Méthode pour insérer les données

  Future<int> insertionDonne(String sql) async {
    Database? mydb = await db;
    int answer = await mydb!.rawInsert(sql);
    return answer;
  }

  // Méthode pour afficher
  Future<List<Map>> afficher(String affich) async {
    Database? mydb = await db;
    List<Map> reponse = await mydb!.rawQuery(affich);
    return reponse;
  }
}

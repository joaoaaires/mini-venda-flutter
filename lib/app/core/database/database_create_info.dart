import 'package:sqflite/sqflite.dart';

onCreate(Database db, int version) async {
  await db.execute('''
    CREATE TABLE IF NOT EXISTS "cliente" (
      "id" INTEGER PRIMARY KEY AUTOINCREMENT,
      "nomelegal" VARCHAR(255) NOT NULL,
      "nomepopular" VARCHAR(255) NOT NULL,
      "registrounico" VARCHAR(255) NOT NULL,
      "registrogeral" VARCHAR(255) NOT NULL,
      "dataorigem" DATE NOT NULL
    );
  ''');
  await db.execute('''
    CREATE TABLE IF NOT EXISTS "produto" (
      "id" INTEGER PRIMARY KEY AUTOINCREMENT,
      "descricao" VARCHAR(255) NOT NULL,
      "valor" DOUBLE NOT NULL,
      "dataorigem" DATE NOT NULL
    );
  ''');
}

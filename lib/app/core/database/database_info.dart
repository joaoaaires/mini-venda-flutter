// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'database_create_info.dart';

class DatabaseInfo {
  static final DatabaseInfo instance = DatabaseInfo._();

  DatabaseInfo._();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    return await _initDatabase();
  }

  Future<Database> _initDatabase() async {
    final path = await getDatabasesPath();
    final pathWithFileName = join(path, "data.db");
    return await openDatabase(
      pathWithFileName,
      version: 2,
      onCreate: onCreate,
    );
  }
}

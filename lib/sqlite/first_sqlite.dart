import 'package:sqflite/sqflite.dart' as sqlite;
class SQLiteHealper{
  static Future<sqlite.Database> db()async{
    return sqlite.openDatabase(
      "info.db",
      version: 1,
      onCreate:(sqlite.Database database,int version){
        database.execute("CREATE TABLE note(id INTEGER AUTOINCREMENT PRIMARY KEY NOT NULL,title TEXT,description TEXT)");
    }
    );
  }
  Future<int> insertData(String title,String description)async{
    final db=await SQLiteHealper.db();
    var values={
      "title":title,
      "description":description,
    };
    return db.insert("note", values);
  }
  Future<List<Map<String,dynamic>>> getAlldata()async{
    final db=await SQLiteHealper.db();
    return db.query("note",orderBy: "id");

  }
}
import 'package:nguyenhongsang_18dh110895/homepage/component/fragment/order_detail.dart';
import 'package:sqflite/sqflite.dart';

final String tableTodo = 'orderDB';
final String columnId = '_id';
final String columnTitle = 'total';
final String columnDone = 'date';

class Todo {
  late int id;
  late var total;
  late var date;
  static final columns = ["_id", "total", "description"];

  // Map<String, Object?> toMap() {
  //   var map = <String, Object?>{columnTitle: total, columnDone: date};
  //   return map;
  // }

  Todo(this.total, this.date);

  factory Todo.fromMap(Map<String, dynamic> data) {
    return Todo(
      data['total'],
      data['date'],
    );
  }

  Map<String, dynamic> toMap() => {
        "date": date,
        "total": total,
      };

  // Todo.fromMap(Map<dynamic, dynamic> map) {
  //   id = map[columnId];
  //   total = map[columnTitle];
  //   date = map[columnDone];
  // }

}

class TodoProvider {
  late Database db;

  Future open() async {
    var databasesPath = await getDatabasesPath();
    String path = databasesPath + '/demo.db';
    print(path);
    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
        create table $tableTodo ( 
          $columnId integer primary key autoincrement, 
          $columnTitle float not null,
          $columnDone text not null)
        ''');
    });
  }

  Future<Todo> insert(Todo todo) async {
    todo.id = await db.insert(tableTodo, todo.toMap());
    return todo;
  }

  // Future<Todo> getTodo(int id) async {
  //   List<Map> maps = await db.query(tableTodo,
  //       columns: [columnId, columnDone, columnTitle],
  //       where: '$columnId = ?',
  //       whereArgs: [id]);
  //   if (maps.length > 0) {
  //     return Todo.fromMap(maps.first);
  //   }
  //   return Future.error('error');
  // }

  Future<int> delete(int id) async {
    return await db.delete(tableTodo, where: '$columnId = ?', whereArgs: [id]);
  }

  Future<int> update(Todo todo) async {
    return await db.update(tableTodo, todo.toMap(),
        where: '$columnId = ?', whereArgs: [todo.id]);
  }

  Future<List<Todo>> getAll() async {
    // openDB('demo.db');
    List<Todo> todos = [];
    db = await openDatabase('demo.db');
    List<Map> maps = await db.query(tableTodo);
    if (maps.length > 0) {
      maps.forEach((element) {
        Todo x = Todo.fromMap(element as Map<String, dynamic>);
        todos.add(x);
      });
      return todos;
    }
    return Future.error('error');
  }

  Future close() async => db.close();
  Future openDB(String path) async => db = await openDatabase(path);
}

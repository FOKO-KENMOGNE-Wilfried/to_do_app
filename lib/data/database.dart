import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];
  final _mybox = Hive.box("mybox");

  void createInitialData() {
    toDoList = [
      ["Make tutorial", false],
      ["Do Exercice", false],
    ];
  }

  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  void updateDataBase() {
    _mybox.put("TODOLIST", toDoList);
  }
}

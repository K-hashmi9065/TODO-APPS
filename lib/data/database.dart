import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  // reference the box
  final _myBox = Hive.box('mybox');

  // run 1st time opening the ever
  void createInitialData() {
    toDoList = [
      ["Make tutorial", false],
      ["Do exercise", false],
    ];
  }

// load the data from the data base
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

// update data base
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}

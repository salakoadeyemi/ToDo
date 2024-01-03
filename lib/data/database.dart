import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  // fisrt time runing app
  void createInitialData() {
    toDoList = [
      ["Meeting", false],
      ["Coding", false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get("TODO LIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODO LIST", toDoList);
  }
}

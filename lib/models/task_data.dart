import 'dart:collection';
import 'dart:typed_data';

import 'package:flutter/widgets.dart';
import 'package:todo_app/models/task.dart';

class Taskdata extends ChangeNotifier {
  List<Task> _taskList = [
    Task(name: "Task 1"),
    Task(name: "Task 2"),
    Task(name: "Task 3"),
  ];

  // List<Task> get taskList => _taskList;

  UnmodifiableListView<Task> get taskList => UnmodifiableListView(_taskList);

  int get taskCount => _taskList.length;

  void addData(String newValue) {
    final task = Task(name: newValue);
    _taskList.add(task);
    notifyListeners();
  }

  void updateData(Task task) {
    task.isCompletedToggle();
    notifyListeners();
  }

  void removeTask(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }
}

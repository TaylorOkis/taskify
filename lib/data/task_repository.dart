import 'package:taskify/data/boxes.dart';

import '../models/task.dart';

class TaskRepository {
  TaskRepository._();

  static final TaskRepository _instance = TaskRepository._();

  factory TaskRepository() {
    return _instance;
  }

  List<Task> getAllTasks() {
    return boxTasks.values.toList();
  }

  // List<Task> getAllCompletedTasks() {
  //   return boxTasks.values
  //       .where((element) => element.completed == true)
  //       .toList();
  // }

  // List<Task> getAllIncompleteTasks() {
  //   return boxTasks.values
  //       .where((element) => element.completed == false)
  //       .toList();
  // }

  Future<void> addTask(Task task) async {
    await boxTasks.add(task);
  }

  void deleteTask(String id) {
    boxTasks.deleteAt(
      boxTasks.values.toList().indexWhere((element) => element.id == id),
    );
  }

  void updateTask(String id, Task task) {
    boxTasks.putAt(
        boxTasks.values.toList().indexWhere((element) => element.id == id),
        task);
  }
}

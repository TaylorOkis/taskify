import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/task_repository.dart';
import '../models/task.dart';

class TaskNotifier extends StateNotifier<List<Task>> {
  final TaskRepository repository;

  TaskNotifier(this.repository) : super([]) {
    loadTasks();
  }

  void loadTasks() {
    state = repository.getAllTasks();
  }

  Future<void> addTask(Task task) async {
    await repository.addTask(task);
    loadTasks();
  }

  void deleteTask(String id) {
    repository.deleteTask(id);
    loadTasks();
  }

  void updateTask(String id, Task task) {
    repository.updateTask(id, task);
    loadTasks();
  }
}

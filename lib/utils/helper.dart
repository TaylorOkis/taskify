import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taskify/provider/app_providers.dart';

import '../models/task.dart';

class TaskifyHelperFunctions {
  TaskifyHelperFunctions._();

  static List<Task> getAllCompletedTasks(WidgetRef ref) {
    final allTasks = ref.watch(taskNotifierProvider);
    return allTasks.where((task) => task.completed).toList();
  }

  static List<Task> getAllIncompleteTasks(WidgetRef ref) {
    final allTasks = ref.watch(taskNotifierProvider);
    return allTasks.where((task) => !task.completed).toList();
  }
}

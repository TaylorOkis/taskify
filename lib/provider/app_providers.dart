import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/task_repository.dart';
import '../models/task.dart';
import 'task_provider.dart';
import 'ui_provider.dart';

final showProvider = ChangeNotifierProvider<UiProvider>((ref) {
  return UiProvider();
});

final taskRepositoryProvider = Provider<TaskRepository>((ref) {
  return TaskRepository();
});

final taskNotifierProvider =
    StateNotifierProvider<TaskNotifier, List<Task>>((ref) {
  final repository = ref.watch(taskRepositoryProvider);
  return TaskNotifier(repository);
});

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taskify/provider/app_providers.dart';
import 'package:taskify/utils/helper.dart';

import '../../models/task.dart';
import '../../utils/constants/colors.dart';
import '../screens/add_task_screen.dart';

class TaskList extends ConsumerWidget {
  final bool incomplete;

  const TaskList({
    super.key,
    required this.incomplete,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late List<Task> tasks;

    if (incomplete) {
      tasks = TaskifyHelperFunctions.getAllIncompleteTasks(ref);
    } else {
      tasks = TaskifyHelperFunctions.getAllCompletedTasks(ref);
    }

    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return ListTile(
          leading: Checkbox(
            onChanged: (value) {
              final updateTask = Task(
                name: task.name,
                completed: value!,
              );
              ref
                  .read(taskNotifierProvider.notifier)
                  .updateTask(task.id, updateTask);
            },
            value: task.completed,
          ),
          title: Text(
            task.name,
            style: incomplete
                ? Theme.of(context).textTheme.bodyMedium
                : Theme.of(context).textTheme.bodyMedium!.copyWith(
                      decoration: TextDecoration.lineThrough,
                      decorationColor: TaskifyColors.lightGrey,
                      color: TaskifyColors.lightGrey,
                      decorationThickness: 2.0,
                    ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              if (incomplete)
                IconButton(
                  onPressed: () {
                    ref.read(showProvider.notifier).setText(task.name);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            AddTaskScreen(edit: true, id: task.id),
                      ),
                    );
                  },
                  icon: const Icon(Icons.edit, color: TaskifyColors.lightGrey),
                ),
              IconButton(
                onPressed: () {
                  ref.read(taskNotifierProvider.notifier).deleteTask(task.id);
                },
                icon: const Icon(Icons.delete_rounded, color: Colors.red),
              ),
            ],
          ),
          // tileColor: Theme.of(context).colorScheme.secondary,
          minTileHeight: 60,
        );
      },
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}

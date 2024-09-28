import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taskify/provider/app_providers.dart';

import '../../models/task.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class AddTaskScreen extends ConsumerWidget {
  const AddTaskScreen({super.key, this.edit, this.id});

  final bool? edit;
  final String? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:
            Text('Add Task', style: Theme.of(context).textTheme.displayLarge),
        actions: [
          TextButton(
            onPressed: () {
              if (edit == true && id != null) {
                final updateTask = Task(
                  name: ref.watch(showProvider).controllerText,
                  completed: false,
                );
                ref
                    .read(taskNotifierProvider.notifier)
                    .updateTask(id!, updateTask);
                ref.read(showProvider).setText('');
                Navigator.pop(context);
              } else {
                final newTask = Task(
                    name: ref.watch(showProvider).controllerText,
                    completed: false);
                ref.read(taskNotifierProvider.notifier).addTask(newTask);
                ref.read(showProvider).setText('');
                Navigator.pop(context);
              }
            },
            child: const Text(
              'Done',
              style: TextStyle(
                color: TaskifyColors.primaryColor,
                fontSize: TaskifySizes.regular,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TaskifySizes.large),
            child: Column(
              children: [
                TextFormField(
                  controller: ref.watch(showProvider).controller,
                  autofocus: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(
                        TaskifySizes.xSmall,
                      ),
                    ),
                    labelText: 'Name',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

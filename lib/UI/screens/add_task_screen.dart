import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:
            Text('Add Task', style: Theme.of(context).textTheme.displayLarge),
        actions: [
          TextButton(
            child: const Text(
              'Done',
              style: TextStyle(
                  color: TaskifyColors.primaryColor,
                  fontSize: TaskifySizes.regular),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
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
                  autofocus: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(TaskifySizes.xSmall),
                    ),
                    labelText: 'Name',
                    // hintText: 'Name',
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

import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Checkbox(
            onChanged: (value) {},
            value: true,
          ),
          title: Text('Sort the documents',
              style: Theme.of(context).textTheme.bodyMedium),
          trailing: const Icon(Icons.delete_rounded, color: Colors.red),
          // tileColor: Theme.of(context).colorScheme.secondary,
          minTileHeight: 60,
        );
      },
      itemCount: 9,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}

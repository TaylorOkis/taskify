import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class TaskList extends StatelessWidget {
  final bool showEditIcon;

  const TaskList({
    super.key,
    required this.showEditIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Checkbox(
            onChanged: (value) {},
            value: showEditIcon ? false : true,
          ),
          title: Text(
            'Sort the documents',
            style: showEditIcon
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
              if (showEditIcon)
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.edit, color: TaskifyColors.lightGrey),
                ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete_rounded, color: Colors.red),
              ),
            ],
          ),
          // tileColor: Theme.of(context).colorScheme.secondary,
          minTileHeight: 60,
        );
      },
      itemCount: 20,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}

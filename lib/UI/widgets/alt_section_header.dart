import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class AltSectionHeader extends ConsumerWidget {
  const AltSectionHeader({
    super.key,
    required this.color,
    required this.title,
    required this.tasksLength,
    required this.show,
  });

  final Color color;
  final String title;
  final bool show;
  final int tasksLength;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: TaskifySizes.sectionHeaderHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TaskifySizes.xLarge),
        border: show ? Border.all(width: 0.0) : Border.all(width: 0.0),
        color: show ? color : TaskifyColors.lightBackgroundColor,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$title: $tasksLength',
              style: show
                  ? Theme.of(context).textTheme.titleLarge
                  : Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: TaskifyColors.darkText),
            ),
          ],
        ),
      ),
    );
  }
}

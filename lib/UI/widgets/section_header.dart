import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.color,
    required this.title,
  });

  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: TaskifySizes.sectionHeaderWidth,
      height: TaskifySizes.sectionHeaderHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TaskifySizes.xsSmall),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: TaskifySizes.xSmall,
        ),
        child: Expanded(
          child: Row(
            children: [
              const Icon(
                Icons.keyboard_arrow_right,
                size: TaskifySizes.xLarge,
                color: TaskifyColors.lightText,
              ),
              const SizedBox(width: TaskifySizes.xsSmall),
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(width: TaskifySizes.small),
              Text(
                '4',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

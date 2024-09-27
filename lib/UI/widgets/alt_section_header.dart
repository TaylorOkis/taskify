import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class AltSectionHeader extends StatelessWidget {
  const AltSectionHeader({
    super.key,
    required this.color,
    required this.title,
    required this.show,
  });

  final Color color;
  final String title;
  final bool show;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: TaskifyDeviceUtils.getScreenWidth(context) * 0.45,
      height: TaskifySizes.sectionHeaderHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TaskifySizes.xLarge),
        border: show ? Border.all(width: 0) : Border.all(width: 1.0),
        color: show ? color : TaskifyColors.lightBackgroundColor,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$title  4',
              style: show
                  ? Theme.of(context).textTheme.titleLarge
                  : Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: TaskifyColors.darkText),
            ),
            // const SizedBox(width: TaskifySizes.small),
            // Text(
            //   '4',
            //   style: Theme.of(context).textTheme.titleLarge,
            // ),
          ],
        ),
      ),
    );
  }
}

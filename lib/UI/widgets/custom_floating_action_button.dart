import 'package:flutter/material.dart';
import 'package:taskify/UI/screens/add_task_screen.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 70,
      child: FittedBox(
        child: FloatingActionButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddTaskScreen(),
            ),
          ),
          backgroundColor: TaskifyColors.primaryColor,
          foregroundColor: TaskifyColors.darkBackgroundColor,
          elevation: 1,
          shape: const CircleBorder(),
          child: const Icon(
            Icons.add_rounded,
            size: TaskifySizes.xsLarge * 1.2,
          ),
        ),
      ),
    );
  }
}

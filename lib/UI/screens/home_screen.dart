import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../widgets/section_header.dart';
import '../widgets/task_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: TaskifySizes.appBarHeight,
              bottom: TaskifySizes.large,
              left: TaskifySizes.large,
              right: TaskifySizes.large,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Tasks', style: Theme.of(context).textTheme.displayLarge),
                const SizedBox(height: TaskifySizes.xsLarge),
                SectionHeader(
                  title: 'Incomplete',
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: TaskifySizes.large),
                const TaskList(),
                const SizedBox(height: TaskifySizes.xsLarge),
                const Divider(
                  thickness: TaskifySizes.xsSmall / 3.5,
                  color: TaskifyColors.lightGrey,
                ),
                const SizedBox(height: TaskifySizes.xsLarge),
                SectionHeader(
                  title: 'Completed',
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                const SizedBox(height: TaskifySizes.large),
                const TaskList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

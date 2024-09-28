import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taskify/provider/riverpod.dart';

import '../../utils/constants/sizes.dart';
import '../widgets/alt_section_header.dart';
import '../widgets/custom_floating_action_button.dart';

import '../widgets/task_list.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  // void toggleShowIncomplete(BuildContext context) {
  //   context.read(uiProvider).setShowInComplete;
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      floatingActionButton: const CustomFloatingActionButton(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: TaskifySizes.appBarHeight,
              bottom: TaskifySizes.appBarHeight * 2,
              left: TaskifySizes.large,
              right: TaskifySizes.large,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Tasks', style: Theme.of(context).textTheme.displayLarge),
                const SizedBox(height: TaskifySizes.xLarge),
                Row(
                  children: [
                    Flexible(
                      child: GestureDetector(
                        onTap: () =>
                            ref.read(showProvider).toggleShowInComplete(),
                        child: AltSectionHeader(
                          title: 'Incomplete',
                          color: Theme.of(context).colorScheme.primary,
                          show: ref.watch(showProvider).showInComplete,
                        ),
                      ),
                    ),
                    const SizedBox(width: TaskifySizes.xSmall),
                    Flexible(
                      child: GestureDetector(
                        onTap: () =>
                            ref.read(showProvider).toggleShowCompleted(),
                        child: AltSectionHeader(
                          title: 'Complete',
                          color: Theme.of(context).colorScheme.tertiary,
                          show: ref.watch(showProvider).showCompleted,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: TaskifySizes.large),
                Visibility(
                  visible: ref.watch(showProvider).showInComplete,
                  child: const TaskList(
                    key: Key('incompleteTasks'),
                    showEditIcon: true,
                  ),
                ),
                Visibility(
                  visible: ref.watch(showProvider).showCompleted,
                  child: const TaskList(
                    key: Key('completedTasks'),
                    showEditIcon: false,
                  ),
                ),

                // GestureDetector(
                //   onTap: () => ref.read(showProvider).toggleShowInComplete(),
                //   child: SectionHeader(
                //     title: 'Incomplete',
                //     color: Theme.of(context).colorScheme.primary,
                //     show: ref.watch(showProvider).showInComplete,
                //   ),
                // ),
                // const SizedBox(height: TaskifySizes.large),
                // Visibility(
                //   visible: ref.watch(showProvider).showInComplete,
                //   child: const TaskList(),
                // ),
                // const SizedBox(height: TaskifySizes.xsLarge),
                // const Divider(
                //   thickness: TaskifySizes.xsSmall / 10,
                //   color: TaskifyColors.lightGrey,
                // ),
                // const SizedBox(height: TaskifySizes.xsLarge * 1.5),
                // GestureDetector(
                //   onTap: () => ref.read(showProvider).toggleShowCompleted(),
                //   child: SectionHeader(
                //     title: 'Completed',
                //     color: Theme.of(context).colorScheme.tertiary,
                //     show: ref.watch(showProvider).showCompleted,
                //   ),
                // ),
                // const SizedBox(height: TaskifySizes.large),
                // Visibility(
                //   visible: ref.watch(showProvider).showCompleted,
                //   child: const TaskList(),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

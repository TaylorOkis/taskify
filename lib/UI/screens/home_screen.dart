import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';
import '../widgets/section_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                const SizedBox(height: TaskifySizes.xsLarge),
                SectionHeader(
                  title: 'Completed',
                  color: Theme.of(context).colorScheme.tertiary,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

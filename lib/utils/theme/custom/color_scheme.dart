import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TaskifyColorScheme {
  TaskifyColorScheme._();

  static const ColorScheme lightColorScheme = ColorScheme.light(
    surface: TaskifyColors.lightBackgroundColor,
    primary: TaskifyColors.primaryColor,
    secondary: TaskifyColors.secondaryColor,
    tertiary: TaskifyColors.tertiaryColor,
  );

  static const ColorScheme darkColorScheme = ColorScheme.dark(
    surface: TaskifyColors.darkBackgroundColor,
    primary: TaskifyColors.primaryColor,
    secondary: TaskifyColors.secondaryColor,
    tertiary: TaskifyColors.tertiaryColor,
  );
}

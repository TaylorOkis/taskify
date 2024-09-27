import 'package:flutter/material.dart';
import 'package:taskify/utils/theme/custom/input_decoration.dart';

import 'custom/checbox.dart';
import 'custom/color_scheme.dart';
import 'custom/text_theme.dart';

class TaskifyTheme {
  TaskifyTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: TaskifyTextTheme.lightTextTheme,
    colorScheme: TaskifyColorScheme.lightColorScheme,
    checkboxTheme: TaskifyCheckbox.lightCheckboxTheme,
    // inputDecorationTheme: TaskifyInputDecorationTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    textTheme: TaskifyTextTheme.darkTextTheme,
    colorScheme: TaskifyColorScheme.darkColorScheme,
    checkboxTheme: TaskifyCheckbox.darkCheckboxTheme,
    // inputDecorationTheme: TaskifyInputDecorationTheme.darkInputDecorationTheme,
  );
}

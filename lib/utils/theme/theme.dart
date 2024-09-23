import 'package:flutter/material.dart';

import 'custom/color_scheme.dart';
import 'custom/text_theme.dart';

class TaskifyTheme {
  TaskifyTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    textTheme: TaskifyTextTheme.lightTextTheme,
    colorScheme: TaskifyColorScheme.lightColorScheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    textTheme: TaskifyTextTheme.darkTextTheme,
    colorScheme: TaskifyColorScheme.darkColorScheme,
  );
}

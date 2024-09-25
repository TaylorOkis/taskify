import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TaskifyTextTheme {
  TaskifyTextTheme._();

  static TextTheme lightTextTheme = const TextTheme(
    displayLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w800,
      color: TaskifyColors.darkText,
    ),
    titleLarge: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: TaskifyColors.lightText,
    ),
    bodyMedium: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w500,
      color: TaskifyColors.darkText,
    ),
  );

  static TextTheme darkTextTheme = const TextTheme(
    displayLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w800,
      color: TaskifyColors.lightText,
    ),
    titleLarge: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: TaskifyColors.lightText,
    ),
    bodyMedium: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w500,
      color: TaskifyColors.lightText,
    ),
  );
}

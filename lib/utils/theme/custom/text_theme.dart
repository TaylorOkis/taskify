import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TaskifyTextTheme {
  TaskifyTextTheme._();

  static TextTheme lightTextTheme = const TextTheme(
    displayLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: TaskifyColors.darkText,
    ),
    titleMedium: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w500,
      color: TaskifyColors.darkText,
    ),
    bodyMedium: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w400,
      color: TaskifyColors.lightGrey,
    ),
  );

  static TextTheme darkTextTheme = const TextTheme(
    displayLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: TaskifyColors.lightText,
    ),
    titleMedium: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w500,
      color: TaskifyColors.lightText,
    ),
    bodyMedium: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w400,
      color: TaskifyColors.lightGrey,
    ),
  );
}

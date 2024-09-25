import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TaskifyCheckbox {
  TaskifyCheckbox._();

  static final lightCheckboxTheme = CheckboxThemeData(
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.green;
      } else {
        return Colors.transparent;
      }
    }),
    side: const BorderSide(color: TaskifyColors.lightGrey, width: 1.75),
  );

  static final darkCheckboxTheme = CheckboxThemeData(
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.green;
      } else {
        return Colors.transparent;
      }
    }),
    side: const BorderSide(color: TaskifyColors.lightGrey, width: 1.75),
  );
}

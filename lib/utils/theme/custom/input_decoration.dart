import 'package:flutter/material.dart';

import '../../constants/sizes.dart';

class TaskifyInputDecorationTheme {
  TaskifyInputDecorationTheme._();

  static final lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: 14.0),
    hintStyle: const TextStyle().copyWith(fontSize: 14.0),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    border: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(TaskifySizes.xSmall),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(TaskifySizes.xSmall),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(TaskifySizes.xSmall),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(TaskifySizes.xSmall),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(TaskifySizes.xSmall),
    ),
  );

  static final darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: 14.0),
    hintStyle: const TextStyle().copyWith(fontSize: 14.0),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    border: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(TaskifySizes.xSmall),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(TaskifySizes.xSmall),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(TaskifySizes.xSmall),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(TaskifySizes.xSmall),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(TaskifySizes.xSmall),
    ),
  );
}

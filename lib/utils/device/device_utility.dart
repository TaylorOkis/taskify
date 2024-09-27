import 'package:flutter/material.dart';

class TaskifyDeviceUtils {
  TaskifyDeviceUtils._();

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}

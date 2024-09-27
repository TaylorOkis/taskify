import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
  bool _showInComplete = false;
  bool get showInComplete => _showInComplete;

  void toggleShowInComplete() {
    _showInComplete = !_showInComplete;
    notifyListeners();
  }

  bool _showCompleted = false;
  bool get showCompleted => _showCompleted;
  void toggleShowCompleted() {
    _showCompleted = !_showCompleted;
    notifyListeners();
  }
}


// final uiProvider = ChangeNotifierProvider((ref) => UiProvider());
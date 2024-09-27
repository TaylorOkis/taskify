import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
  bool _showInComplete = true;
  bool get showInComplete => _showInComplete;

  void toggleShowInComplete() {
    if (!_showInComplete) {
      _showInComplete = !_showInComplete;
      _showCompleted = !_showCompleted;
    }
    notifyListeners();
  }

  bool _showCompleted = false;
  bool get showCompleted => _showCompleted;
  void toggleShowCompleted() {
    if (!_showCompleted) {
      _showCompleted = !_showCompleted;
      _showInComplete = !_showCompleted;
    }
    notifyListeners();
  }
}


// final uiProvider = ChangeNotifierProvider((ref) => UiProvider());
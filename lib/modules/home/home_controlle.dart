import 'package:flutter/material.dart';

class HomeController with ChangeNotifier {
  bool isModal = false;
  bool isOutFlow = false;
  String value = '';
  String description = '';
  String date = '';

  void setIsModal(bool value) {
    isModal = value;
    notifyListeners();
  }

  void setIsOutFlow(bool value) {
    isOutFlow = value;
    notifyListeners();
  }
}

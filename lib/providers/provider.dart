import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  bool _isLoading = false;

  bool get isloding => _isLoading;

  void change() {
    _isLoading = ! _isLoading;
    notifyListeners();
  }
}

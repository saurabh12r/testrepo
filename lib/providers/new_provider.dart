import 'package:flutter/material.dart';
class Newnote with ChangeNotifier {
 int  _random = 0;
  int get random => _random;
  
  void randomInc() {
    _random += 5;
    notifyListeners();
  }
}


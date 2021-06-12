import 'package:flutter/cupertino.dart';

class NumberInputProvider extends ChangeNotifier {
  int _number = 0;

  int get number {
    return _number;
  }

  set number(int number) {
    _number = number;
    notifyListeners();
  }
}

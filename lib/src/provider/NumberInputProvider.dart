import 'package:flutter/cupertino.dart';

class NumberInputProvider extends ChangeNotifier {
  String _number = '0';
  String _operator = '';

  List<double> _numbersToOperate = [];

  String get value {
    return _number;
  }

  set value(String character) {
    if (_isNumberOrDot(character)) {
      _setNumber(character);
    } else {
      _setOperator(character);
    }
    notifyListeners();
  }

  void _setNumber(String character) {
    if (_number.length <= 8) {
      if (_number.startsWith('0') && _number.length <= 1) {
        if (character != '.') _number = _number.replaceFirst('0', '');
      }
      if (!_number.contains('.') && character == '.')
        _number = _number + character;
      if (character != '.') _number = _number + character;
    }
  }

  void _setOperator(String character) {
    switch (character) {
      case 'RESET':
        {
          _number = '0';
        }
        break;
      case 'DEL':
        {
          _number = _number.substring(0, _number.length - 1);
          if (_number.length < 1) _number = '0';
        }
        break;
      case '=':
        {
          _doOperation();
        }
        break;
      default:
        {
          _operator = character;
          print(_operator);
          if (_operator != '') {
            _numbersToOperate.add(double.parse(_number));
          }
          _operator = '';
          print(_operator);
        }
    }
  }

  String _doOperation() {
    // TODO: end fucntion
    return '';
  }

  bool _isNumberOrDot(String character) {
    final RegExp isNumberOrDot = RegExp(r'^[0-9]|\.$');
    return isNumberOrDot.hasMatch(character);
  }
}

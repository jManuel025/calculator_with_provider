import 'package:flutter/cupertino.dart';

class NumberInputProvider extends ChangeNotifier {
  String _number = '0';
  double? _firstOp;
  double? _secondOp;
  String _operator = '';

  String get value {
    return _removeZeroDecimal(_number);
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
          _clear();
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
          if (_secondOp == null) {
            _secondOp = double.parse(_number);
          }
          if (_operator != '') {
            _number = _doOperation(_operator);
          }
          _clear();
        }
        break;
      default:
        {
          if (_firstOp == null) {
            _firstOp = double.parse(_number);
            _number = '0';
          } else {
            _secondOp = double.parse(_number);
            _firstOp = double.parse(_doOperation(_operator));
            _secondOp = null;
            _number = '0';
          }
          _operator = character;
        }
    }
  }

  String _doOperation(String opSymbol) {
    Map<String, dynamic> operation = {
      '+': _firstOp! + _secondOp!,
      '-': _firstOp! - _secondOp!,
      'x': _firstOp! * _secondOp!,
      '/': (_firstOp! / _secondOp!).toStringAsFixed(2),
    };
    return operation[opSymbol].toString();
  }

  String _removeZeroDecimal(String number) {
    double decNumber = double.parse(number);
    return decNumber
        .toStringAsFixed(decNumber.truncateToDouble() == decNumber ? 0 : 1);
  }

  bool _isNumberOrDot(String character) {
    final RegExp isNumberOrDot = RegExp(r'^[0-9]|\.$');
    return isNumberOrDot.hasMatch(character);
  }

  void _clear() {
    _firstOp = null;
    _secondOp = null;
    _operator = '';
  }
}

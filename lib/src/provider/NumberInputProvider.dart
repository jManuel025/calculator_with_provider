import 'package:flutter/cupertino.dart';

class NumberInputProvider extends ChangeNotifier {
  String _number = '0';
  List<String> numbersToOperate = [];

  String get number {
    return _number;
  }

  set number(String number) {
    _writeNumber(number);
    notifyListeners();
  }

  void _writeNumber(String number) {
    switch (number) {
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
          if (_number.length <= 10) {
            if (_number.startsWith('0') && _number.length <= 1) {
              if (number != '.') _number = _number.replaceFirst('0', '');
            }
            _number = _number + number;
          }
        }
        break;
    }
  }

  void _doOperation() {
    print('TODO: do operation');
  }
}

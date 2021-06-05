import 'package:calculator_with_provider/src/utils/Palette.dart';
import 'package:flutter/material.dart';

enum Type { number, action, result }

class NumpadKey extends StatelessWidget {
  final String? keyChar;
  final Type type;

  NumpadKey({
    this.keyChar,
    this.type = Type.number,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [_keypadShadow(type), _keypadNumber(context, type)],
    );
  }

  Container _keypadShadow(Type type) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: ShapeDecoration(
        color: type == Type.number
            ? Palette.surface[200]
            : type == Type.action
                ? Palette.primary[200]
                : Palette.accent[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }

  Container _keypadNumber(BuildContext context, Type type) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.0),
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        color: type == Type.number
            ? Palette.surface[100]
            : type == Type.action
                ? Palette.primary[100]
                : Palette.accent[100],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      child: Text(
        keyChar ?? '-',
        style: type == Type.number
            ? Theme.of(context).textTheme.headline5
            : Theme.of(context).textTheme.headline6,
      ),
    );
  }
}

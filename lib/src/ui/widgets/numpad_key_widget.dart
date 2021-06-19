import 'package:calculator_with_provider/src/provider/NumberInputProvider.dart';
import 'package:calculator_with_provider/src/utils/Palette.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum Type { number, action, result }

class NumpadKey extends StatelessWidget {
  final String keyChar;
  final Type type;
  final bool isLarge;

  NumpadKey({this.keyChar = '', this.type = Type.number, this.isLarge = false});

  @override
  Widget build(BuildContext context) {
    Map<Type, Color?> shadowColor = {
      Type.number: Palette.surface[200],
      Type.action: Palette.primary[200],
      Type.result: Palette.accent[200],
    };
    Map<Type, Color?> lightColor = {
      Type.number: Palette.surface[100],
      Type.action: Palette.primary[100],
      Type.result: Palette.accent[100],
    };
    Size _size = MediaQuery.of(context).size;
    return Consumer<NumberInputProvider>(
      builder: (context, number, _) {
        return GestureDetector(
          onTap: () => _writeChar(keyChar, number, type),
          child: Container(
            width:
                ((_size.width - 48) / (isLarge ? 2 : 4)) - (isLarge ? 32 : 24),
            height: 70,
            child: Stack(
              children: [
                Container(
                  decoration: ShapeDecoration(
                    color: shadowColor[type],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5.0),
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    color: lightColor[type],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: Text(
                    keyChar,
                    style: type == Type.number
                        ? Theme.of(context).textTheme.headline5
                        : Theme.of(context).textTheme.headline6,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void _writeChar(String key, NumberInputProvider number, Type type) {
    number.value = key;
  }
}

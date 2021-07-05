import 'package:calculator_with_provider/src/ui/widgets/numpad_key_widget.dart';
import 'package:flutter/material.dart';

class Numpad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          padding: EdgeInsets.all(32.0),
          width: double.maxFinite,
          color: Theme.of(context).primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                runAlignment: WrapAlignment.spaceBetween,
                runSpacing: 16.0,
                spacing: 16.0,
                children: _numpadGrid(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _numpadGrid() {
    List<String> chars = [
      '7',
      '8',
      '9',
      'DEL',
      '4',
      '5',
      '6',
      '+',
      '1',
      '2',
      '3',
      '-',
      '.',
      '0',
      '/',
      'x',
      'RESET',
      '='
    ];
    return chars
        .map(
          (char) => char.length == 1 && char != '='
              ? NumpadKey(keyChar: '$char')
              : char == 'DEL'
                  ? NumpadKey(
                      keyChar: '$char',
                      type: Type.action,
                    )
                  : char == 'RESET'
                      ? NumpadKey(
                          keyChar: '$char',
                          type: Type.action,
                          isLarge: true,
                        )
                      : NumpadKey(
                          keyChar: '$char',
                          type: Type.result,
                          isLarge: true,
                        ),
        )
        .toList();
  }
}

// GridView.count(
//   crossAxisCount: 4,
//   crossAxisSpacing: 16.0,
//   mainAxisSpacing: 16.0,
//   childAspectRatio: .95,
//   children: [
//     NumpadKey(),
//     NumpadKey(),
//     NumpadKey(),
//     NumpadKey(),
//   ],
// ),

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
          child: GridView.count(
            crossAxisCount: 4,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: .95,
            children: [
              NumpadKey(
                keyChar: 'DEL',
                type: Type.action,
              ),
              NumpadKey(),
              NumpadKey(),
              NumpadKey(),
              NumpadKey(),
              NumpadKey(),
              NumpadKey(),
              NumpadKey(),
              NumpadKey(),
              NumpadKey(),
              NumpadKey(),
              NumpadKey(),
              NumpadKey(),
              NumpadKey(),
              NumpadKey(),
              NumpadKey(),
            ],
          ),
        ),
      ),
    );
  }
}

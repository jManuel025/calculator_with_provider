import 'package:calculator_with_provider/src/provider/NumberInputProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberInputProvider>(
      builder: (context, number, _) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(32.0),
              width: double.maxFinite,
              color: Theme.of(context).primaryColorDark,
              child: Text(
                '${number.value}',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
          ),
        );
      },
    );
  }
}

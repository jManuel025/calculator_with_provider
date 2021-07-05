import 'package:calculator_with_provider/src/ui/widgets/header_widget.dart';
import 'package:calculator_with_provider/src/ui/widgets/input_widget.dart';
import 'package:calculator_with_provider/src/ui/widgets/numpad_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Theme.of(context).backgroundColor,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Header(),
                flex: 1,
              ),
              Expanded(
                child: Input(),
                flex: 2,
              ),
              Expanded(
                child: Numpad(),
                flex: 7,
              )
            ],
          )),
    );
  }
}

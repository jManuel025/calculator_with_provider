import 'package:calculator_with_provider/src/ui/widgets/toggle_switch_widget.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Text('calc'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text('THEME'),
                ),
                Container(
                  child: ToggleSwitch(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

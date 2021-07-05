import 'package:calculator_with_provider/src/ui/widgets/toggle_switch_widget.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'calc',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: double.maxFinite,
                  margin: EdgeInsets.symmetric(
                    vertical: 18.0,
                    horizontal: 16.0,
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'THEME',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
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

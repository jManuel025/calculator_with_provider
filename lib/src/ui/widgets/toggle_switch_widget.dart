import 'package:flutter/material.dart';

class ToggleSwitch extends StatefulWidget {
  @override
  _ToggleSwitchState createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
          width: 85.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              _numbersText(text: '1'),
              _numbersText(text: '2'),
              _numbersText(text: '3'),
            ],
          ),
        ),
        Container(
          width: 85.0,
          height: 30.0,
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Theme.of(context).primaryColor),
          alignment: Alignment.centerLeft,
          child: Draggable(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).accentColor,
              ),
              margin: EdgeInsets.symmetric(horizontal: 6.0),
              width: 20.0,
            ),
            feedback: Container(),
          ),
        ),
      ],
    );
  }

  Text _numbersText({String? text}) {
    return Text(
      text ?? '0',
      style: Theme.of(context).textTheme.bodyText1,
    );
  }
}

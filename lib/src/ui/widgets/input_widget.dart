import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.all(16.0),
          width: double.maxFinite,
          color: Theme.of(context).primaryColorDark,
          child: Text('399,981'),
        ),
      ),
    );
  }
}

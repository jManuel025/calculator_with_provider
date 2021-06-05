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
          width: double.infinity,
          color: Theme.of(context).primaryColor,
          child: Text('numpad'),
        ),
      ),
    );
  }
}

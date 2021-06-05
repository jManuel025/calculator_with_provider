import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Color(0xFF3B4664),
      accentColor: Color(0xFFD13F30),
      fontFamily: 'Montserrat',
    );
  }
}

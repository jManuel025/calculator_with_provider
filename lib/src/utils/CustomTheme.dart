import 'package:calculator_with_provider/src/utils/Palette.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Palette.primary[300],
      primaryColorDark: Palette.primary[400],
      primaryColorLight: Palette.primary[100],
      accentColor: Palette.accent[100],
      backgroundColor: Palette.primary[200],
      fontFamily: 'Montserrat',
    );
  }
}

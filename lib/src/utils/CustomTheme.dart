import 'package:calculator_with_provider/src/utils/Palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Palette.primary[300],
      primaryColorDark: Palette.primary[400],
      primaryColorLight: Palette.primary[100],
      accentColor: Palette.accent[100],
      backgroundColor: Palette.primary[200],
      textTheme: TextTheme(
        headline3: GoogleFonts.spartan(
          fontSize: 40.0,
          fontWeight: FontWeight.w700,
          color: Palette.surface[50],
        ),
        headline4: GoogleFonts.spartan(
          fontWeight: FontWeight.w700,
          color: Palette.surface[50],
        ),
        bodyText1: GoogleFonts.spartan(
          fontWeight: FontWeight.w700,
          color: Palette.surface[50],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Palette.dart';

class CustomTextTheme {
  static TextTheme get lightTheme {
    return TextTheme(
      headline3: GoogleFonts.spartan(
        fontSize: 40.0,
        fontWeight: FontWeight.w700,
        color: Palette.surface[50],
      ),
      headline4: GoogleFonts.spartan(
        fontWeight: FontWeight.w700,
        color: Palette.surface[50],
      ),
      // numpad number keys text color
      headline5: GoogleFonts.spartan(
        fontWeight: FontWeight.w700,
        fontSize: 32.5,
        color: Palette.primary[200],
      ),
      // numpad other keys text color
      headline6: GoogleFonts.spartan(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        color: Palette.surface[50],
      ),
      bodyText1: GoogleFonts.spartan(
        fontWeight: FontWeight.w700,
        color: Palette.surface[50],
      ),
    );
  }
}

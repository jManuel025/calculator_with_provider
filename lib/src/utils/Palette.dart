import 'package:flutter/material.dart';

class Palette {
  static MaterialColor get primary {
    return MaterialColor(
      0xFF32394d,
      const <int, Color>{
        100: const Color(0xFF647299),
        200: const Color(0xFF3B4664),
        300: const Color(0xFF252D44),
        400: const Color(0xFF181F32),
      },
    );
  }

  static MaterialColor get accent {
    return MaterialColor(
      0xFFD13F30,
      const <int, Color>{
        100: const Color(0xFFD13F30),
        200: const Color(0xFF922619),
      },
    );
  }

  static MaterialColor get surface {
    return MaterialColor(
      0xFFE9E3DB,
      const <int, Color>{
        50: const Color(0xFFFFFFFF),
        100: const Color(0xFFE9E3DB),
        200: const Color(0xFFB2A497),
      },
    );
  }
}

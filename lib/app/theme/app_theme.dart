import 'package:flutter/material.dart';

class AppTheme {
  static const _color = 0xFF4F2584;
  static final theme = ThemeData(
    primaryColor: const Color(_color),
    primarySwatch: const MaterialColor(
      0xFF4F2584,
      {
        50: Color(0xFFEAE5F0),
        100: Color(0xFFCABEDA),
        200: Color(0xFFA792C2),
        300: Color(0xFF8466A9),
        400: Color(0xFF694696),
        500: Color(_color),
        600: Color(0xFF48217C),
        700: Color(0xFF3F1B71),
        800: Color(0xFF361667),
        900: Color(0xFF260D54),
      },
    ),
  );
}

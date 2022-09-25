import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xffFF865E);
  static const Color accent = Color(0xffCC3636);

  static final theme = ThemeData(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(
        color: primary
      ),

  );
}

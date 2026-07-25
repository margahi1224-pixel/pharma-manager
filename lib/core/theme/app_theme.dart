import 'package:flutter/material.dart';

/// Central place for theme. Settings screen (Light/Dark toggle) will
/// later switch ThemeMode via a Riverpod provider that reads/writes this.
class AppTheme {
  static const Color primary = Color(0xFF0E7C66); // pharmacy green
  static const Color accent = Color(0xFF1E88E5);
  static const Color danger = Color(0xFFE53935); // expiry/low-stock red

  static ThemeData get light => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: primary,
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFFF6F8F7),
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          elevation: 0,
        ),
      );

  static ThemeData get dark => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: primary,
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          elevation: 0,
        ),
      );
}

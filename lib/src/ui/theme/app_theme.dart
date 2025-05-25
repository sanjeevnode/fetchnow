import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData get standard {
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: false,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
        },
      ),
    );
  }
}

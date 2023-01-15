import 'package:flutter/material.dart';

class AppTheme {
  static AppTheme? _instance;

  AppTheme._internal();

  static AppTheme get instance => _instance ??= AppTheme._internal();

  ThemeData light = ThemeData(
    scaffoldBackgroundColor: Colors.green,
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
  );

  ThemeData dark = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.green,
  );
}

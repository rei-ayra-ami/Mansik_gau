import 'package:flutter/material.dart';

final ThemeData isaacTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF0E0E0E),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF8B0000),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.2,
    ),
    centerTitle: true,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF8B0000),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.white, fontSize: 16),
    headlineMedium: TextStyle(color: Colors.redAccent, fontSize: 22),
  ),
);

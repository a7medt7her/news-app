import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData theme = ThemeData(
    useMaterial3: true,
    primaryColor: const Color.fromARGB(241, 195, 192, 192),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.black,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 26,
        fontWeight: FontWeight.w600,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: 26,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        color: Colors.black54,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        color: Color.fromARGB(255, 101, 94, 94),
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    ),
    cardTheme: CardThemeData(
      color: const Color.fromARGB(255, 15, 15, 15),
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
  );
}

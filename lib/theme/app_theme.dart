import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.purple;

  static final ThemeData ligthTheme = ThemeData.light().copyWith(
       
    // Color primario
    primaryColor: primary,

    // Appbar theme
    appBarTheme: const AppBarTheme(
      color: primary
    ),

  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
       
    // Color primario
    primaryColor: primary,

    // Appbar theme
    appBarTheme: const AppBarTheme(
      color: primary
    ),

  );
}
import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.purple;

  static final ThemeData ligthTheme = ThemeData.light().copyWith(
       
    // Color primario
    primaryColor: Colors.purple,

    // Appbar theme
    appBarTheme: const AppBarTheme(
      color: primary
    ),

  );
}
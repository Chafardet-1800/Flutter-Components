import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.purple;

  static final ThemeData ligthTheme = ThemeData.light().copyWith(
       
    // Color primario
    primaryColor: primary,

    // Appbar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      foregroundColor: Colors.white,
      centerTitle: true,
    ), 

    textButtonTheme: TextButtonThemeData(
      style:  TextButton.styleFrom(
        foregroundColor: primary
      )
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      foregroundColor: Colors.white,
      shape: CircleBorder()
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: const StadiumBorder()
      )
    ),

  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
       
    // Color primario
    primaryColor: primary,

    // Appbar theme
    appBarTheme: const AppBarTheme(
      color: primary
    ),
    
    textButtonTheme: TextButtonThemeData(
      style:  TextButton.styleFrom(
        foregroundColor: primary
      )
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      shape: CircleBorder()
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: const StadiumBorder()
      )
    ),

  );
}
import 'package:flutter/material.dart';
import 'package:ntcservicecode/const/color_const.dart';

class AppTheme {
  // AppTheme._();
  final defaultTheme = ThemeData(
    scaffoldBackgroundColor: kbackgroudcolor,
    textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.white),
    inputDecorationTheme: const InputDecorationTheme(
      errorStyle:
          TextStyle(color: Colors.white), //error text color in inputfiled
      errorBorder: UnderlineInputBorder(
        borderSide:
            BorderSide(color: Colors.white), //error border color in inputfiled
      ),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Color(0xFF181818),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 10,
      ), //doen not work
    ),
    brightness: Brightness.dark,
    primaryColor: accentcolor,
    textTheme: const TextTheme().copyWith(
      headline3: const TextStyle(color: Colors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        onPrimary: Colors.white,
        padding: const EdgeInsets.all(16),
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
  );
}

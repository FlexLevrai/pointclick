import 'package:flutter/material.dart';

class CustomTheme {

  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: const ColorScheme(
        background: Colors.white,
        primary: Color(0xFF0077B5),
        primaryVariant: Color(0xffC74F11),
        secondary: Color(0xFF3dc2ff),
        secondaryVariant: Color(0xFF36abe0),
        onBackground: Colors.white,
        brightness: Brightness.light,
        error: Colors.red,
        onError: Colors.red,
        onSecondary: Colors.white,
        onPrimary: Colors.white,
        surface: Colors.grey,
        onSurface: Colors.grey
      ),
      scaffoldBackgroundColor: Colors.white,
      buttonTheme: const ButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
        buttonColor: Colors.blue,
        disabledColor: Colors.grey,
        textTheme: ButtonTextTheme.primary
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(fontSize: 30.0, color: Colors.black, fontWeight: FontWeight.bold),
        subtitle1: TextStyle(fontSize: 20.0, color: Colors.grey)
      ),
      fontFamily: 'Montserrat',
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      colorScheme: const ColorScheme(
        background: Colors.black45,
        primary: Color(0x00f88a0f),
        primaryVariant: Color(0x00CE4C22),
        secondary: Color(0x00214bbe),
        secondaryVariant: Color(0x0017A2B8),
        onBackground: Colors.white,
        brightness: Brightness.light,
        error: Colors.red,
        onError: Colors.red,
        onSecondary: Color(0x00214bbe),
        onPrimary: Color(0x00f88a0f),
        surface: Colors.grey,
        onSurface: Colors.grey,

      ),
      buttonTheme: const ButtonThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
          buttonColor: Colors.blue,
          disabledColor: Colors.grey,
          textTheme: ButtonTextTheme.primary
      ),
      fontFamily: 'Montserrat',
    );
  }

}
import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.indigo,
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      
  //FloatinActionButton

  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: primary,
    elevation: 5,
  ),


  //ElevatedButton

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
            primary: primary,
            shape: const StadiumBorder(),
            elevation: 0,
          ),
  ),

  //Inputtextfield
  inputDecorationTheme: const InputDecorationTheme(
    floatingLabelStyle: TextStyle(color: primary),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primary),
      borderRadius: BorderRadius.all(Radius.circular(4.0))
    ),

    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primary),
      borderRadius: BorderRadius.all(Radius.circular(4.0))
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5.0))
    )
  ),

  );
  //TextButton theme

  static final ButtonStyle buttonTheme = TextButton.styleFrom(primary: primary);

}

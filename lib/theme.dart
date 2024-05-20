import 'package:flutter/material.dart';

final tema = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.cyanAccent,
    titleTextStyle: TextStyle(
      fontSize: 20,
      color: Colors.black,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.cyanAccent,
    foregroundColor: Colors.black,
    shape: CircleBorder(),
    elevation: 10,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      textStyle: const TextStyle(color: Colors.white),
    ),
  ),
  scaffoldBackgroundColor: Colors.blue,
  textTheme: Typography.whiteCupertino,
);

InputDecoration decorationForm(String label, Icon icon, Widget? icons) {
  return InputDecoration(
    label: Text(label),
    labelStyle: const TextStyle(fontSize: 18, color: Colors.white),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(15),),
        ),
        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255), width: 2),
        borderRadius: BorderRadius.all(Radius.circular(15),),
        ),
        prefixIcon: icon,
        suffixIcon: icons,
        errorBorder: const OutlineInputBorder(borderSide:  BorderSide(color: Colors.red, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(10),),
        ),
  );
}

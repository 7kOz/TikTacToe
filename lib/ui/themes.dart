import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    focusColor: Color.fromARGB(255, 49, 15, 94),
    cardColor: Color.fromARGB(255, 26, 99, 158),
    errorColor: Colors.blue,
    hintColor: Colors.pink,
  );
  static final dark = ThemeData.dark().copyWith(
    focusColor: Colors.white,
    cardColor: Color.fromARGB(255, 5, 34, 58),
    errorColor: Colors.blue,
    hintColor: Colors.pink,
  );
}

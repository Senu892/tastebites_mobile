import 'package:flutter/material.dart';

ThemeData LightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: Color(0xffdc6719),
      secondary: Color(0xffdc6719).withOpacity(0.1),
      tertiary: Color(0xFFFFE5D9),
      background: Colors.white,
      secondaryContainer: Colors.white,
      primaryContainer:  Color(0xFFFFE5D9),
    ));

ThemeData DarkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: Color(0xffdc6719),
      secondary: Color(0xffdc6719).withOpacity(0.1),
      tertiary: Color(0xFFFFE5D9),
      background: const Color.fromARGB(255, 39, 39, 39),
      secondaryContainer: const Color.fromARGB(255, 80, 80, 80),
      primaryContainer:  const Color.fromARGB(255, 80, 80, 80),
    ));

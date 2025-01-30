import 'package:cb016148/screens/about/aboutus.dart';
import 'package:cb016148/screens/checkout/checkoutpage.dart';
import 'package:cb016148/screens/home/home_screen.dart';
import 'package:cb016148/screens/login/login.dart';
import 'package:cb016148/screens/signup/signup.dart';
import 'package:cb016148/screens/snackbox/predefined.dart';
import 'package:cb016148/services/screensize.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return MaterialApp(
        title: 'Flutter Demo',
        themeMode: ThemeMode.system,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        darkTheme: ThemeData.dark(),
        home: const Signup());
  }
}

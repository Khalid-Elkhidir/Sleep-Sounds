import 'package:flutter/material.dart';
import 'package:sleep_sounds/presentation/screens/launch_screen.dart';
import 'package:sleep_sounds/presentation/screens/login_screen.dart';
import 'package:sleep_sounds/presentation/screens/main_screen.dart';
import 'package:sleep_sounds/utils/dark_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sleep Sounds',
      theme: kDarkTheme,
      home: const LoginScreen(),
    );
  }
}

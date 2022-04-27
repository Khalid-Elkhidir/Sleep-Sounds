import 'dart:async';

import 'package:flutter/material.dart';

import 'login_screen.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const LoginScreen() ));
    });
    return Container(
      color: const Color(0xFF141927),
      child: Center(
        child: Image.asset("assets/images/app_icon.png"),
      ),
    );
  }
}

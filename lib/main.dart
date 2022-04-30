import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sleep_sounds/presentation/screens/launch_screen.dart';
import 'package:sleep_sounds/presentation/screens/login_screen.dart';
import 'package:sleep_sounds/presentation/screens/main_screen.dart';

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
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF21283F),
        textTheme: const TextTheme(
          headline4: TextStyle(
              fontFamily: "Nunito",
              fontWeight: FontWeight.w900,
              color: Colors.white,
              fontSize: 31),
          subtitle1: TextStyle(
            fontFamily: "Nunito",
            fontWeight: FontWeight.w600,
            color: Color(0xAAEBEBF6),
          ),
          caption: TextStyle(
            fontFamily: "Nunito",
            fontWeight: FontWeight.w600,
            fontSize: 12,
            color: Colors.white38,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF21283F),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          )
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color(0xFF4870FF),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color(0xFF2D344B)),
            elevation: MaterialStateProperty.all(0),
            // padding: MaterialStateProperty.all(
            //     EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
          )
        ),
        tabBarTheme: TabBarTheme(
          splashFactory: NoSplash.splashFactory,
          overlayColor: MaterialStateProperty.resolveWith (
                (Set  states) {
              return states.contains(MaterialState.focused) ? null : Colors.transparent;
            },
          ),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}

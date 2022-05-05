import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

ThemeData kDarkTheme = ThemeData(
  scaffoldBackgroundColor: kPrimaryColor,
  textTheme: const TextTheme(
    headline4: TextStyle(
        fontFamily: "Nunito",
        fontWeight: FontWeight.w900,
        color: kHeadLine4Color,
        fontSize: 31),
    subtitle1: TextStyle(
      fontFamily: "Nunito",
      fontWeight: FontWeight.w600,
      color: kSubtitle1Color,
    ),
    subtitle2: TextStyle(
      fontFamily: "Nunito",
      fontWeight: FontWeight.w600,
      color: Colors.white60,
      height: 1.2,
      letterSpacing: 0.15,
    ),
    caption: TextStyle(
      fontFamily: "Nunito",
      fontWeight: FontWeight.w600,
      fontSize: 12,
      color: kCaptionColor,
    ),
  ),
  appBarTheme: const AppBarTheme(
      backgroundColor: kPrimaryColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      )),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: kSecondaryColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(kSecondaryColor),
      elevation: MaterialStateProperty.all(0),
      // padding: MaterialStateProperty.all(
      //     EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all(kButtonLabelColor),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
  )),
  tabBarTheme: TabBarTheme(
    indicator: ShapeDecoration(shape: StadiumBorder(), color: Colors.blue),
    unselectedLabelColor: Colors.white,
    indicatorSize: TabBarIndicatorSize.label,
    splashFactory: NoSplash.splashFactory,
    overlayColor: MaterialStateProperty.resolveWith(
      (Set states) {
        return states.contains(MaterialState.focused)
            ? null
            : Colors.transparent;
      },
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: kSecondaryColor,
    showUnselectedLabels: false,
    unselectedItemColor: Colors.white70,
  ),
  dividerTheme: DividerThemeData(
    color: kSecondaryColor,
  ),
);

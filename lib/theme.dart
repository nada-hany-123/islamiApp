import 'package:flutter/material.dart';
class AppTheme {
  static Color primaryLight = Color(0xFFB7935F);
  static Color primaryDark=Color(0xFF141A2E);
  static Color black = Color(0xFF242424);
  static Color gold = Color(0xFFFACC1D);
  static Color white = Colors.white;
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryLight,
  scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor:black,
      backgroundColor: primaryLight,
      unselectedItemColor: white,
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
    centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: black,
      )
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(fontSize: 25,
      fontWeight: FontWeight.w400,
      color: black),
        titleLarge:TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20,
          color: black,
        )
    ),
  );
  static ThemeData darkTheme =
  ThemeData(
  primaryColor: primaryDark,
  scaffoldBackgroundColor: Colors.transparent,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
  selectedItemColor:gold,
  backgroundColor: primaryDark,
  unselectedItemColor: white,
  ),
  appBarTheme: AppBarTheme(
  backgroundColor: Colors.transparent,
  elevation: 0,
  centerTitle: true,
  titleTextStyle: TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  color: gold,
  )
  ),
  textTheme: TextTheme(
  headlineSmall: TextStyle(fontSize: 25,
  fontWeight: FontWeight.w400,
  color: white),
  titleLarge:TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 20,
  color: gold,
  )
  ),
  );
}

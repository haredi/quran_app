import 'package:flutter/material.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
          fontSize: 26, fontWeight: FontWeight.w700, color: Colors.black),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),
    cardTheme: CardTheme(
        color: Colors.white,
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.symmetric(vertical: 3, horizontal: 12)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 35),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      elevation: 20,
    ),
    dividerColor: Color(0xFFB7935F),
    primaryColor: Color(0xFFB7935F),
    textTheme: TextTheme(
      titleSmall: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black),
      bodySmall: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
          fontSize: 26, fontWeight: FontWeight.w700, color: Colors.black),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 35),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      elevation: 20,
    ),
    primaryColor: Color(0xFFB7935F),
  );
}

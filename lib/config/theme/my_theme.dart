import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/colors_manager.dart';
import 'package:quran_app/core/utils/font_manager.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
    iconTheme: IconThemeData(
      color: ColorsManager.goldColor,
      size: 30,
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: ColorsManager.goldColor),
    scaffoldBackgroundColor: Colors.transparent,
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w700,
          color: Colors.black,
          fontFamily: FontsManager.elMessiri),
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
      showUnselectedLabels: false,
      elevation: 20,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      elevation: 20,
      backgroundColor: Colors.white,
    ),
    dividerColor: ColorsManager.goldColor,
    primaryColor: ColorsManager.goldColor,
    textTheme: TextTheme(
      titleSmall: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black),
      bodySmall: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
      bodyMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: ColorsManager.goldColor),
      bodyLarge: TextStyle(
          fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    iconTheme: IconThemeData(
      color: ColorsManager.yellowColor,
      size: 30,
    ),
    colorScheme: ColorScheme.fromSeed(
        seedColor: ColorsManager.yellowColor,
        primary: ColorsManager.darkBlue,
        onPrimary: Colors.yellow),
    scaffoldBackgroundColor: Colors.transparent,
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      titleTextStyle: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w700,
          color: Colors.white,
          fontFamily: FontsManager.elMessiri),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),
    cardTheme: CardTheme(
        color: ColorsManager.darkBlue,
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.symmetric(vertical: 3, horizontal: 12)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: ColorsManager.yellowColor,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 35),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      elevation: 20,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      elevation: 20,
      backgroundColor: ColorsManager.darkBlue,
    ),
    dividerColor: ColorsManager.yellowColor,
    primaryColor: ColorsManager.darkBlue,
    textTheme: TextTheme(
        titleSmall: TextStyle(
            fontSize: 24, fontWeight: FontWeight.w400, color: Colors.white),
        bodyLarge: TextStyle(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),
        bodySmall: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: ColorsManager.yellowColor),
        bodyMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: ColorsManager.yellowColor)),
  );
}

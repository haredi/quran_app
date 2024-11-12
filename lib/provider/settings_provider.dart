// import 'package:flutter/material.dart';
// import 'package:quran_app/core/utils/assets_manager.dart';
//
// class SettingsProvider extends ChangeNotifier {
//   ThemeMode currentTheme = ThemeMode.light;
//   String currentLang = 'en';
//
//   void changeAppTheme(ThemeMode newTheme) {
//     if (currentTheme == newTheme) return;
//
//     currentTheme = newTheme;
//     notifyListeners();
//   }
//
//   String getBackgroundImage() {
//     return currentTheme == ThemeMode.light
//         ? AssetsManager.lightMainBg
//         : AssetsManager.darkMainBg;
//   }
//
//   void changeAppLanguage(String newLang) {
//     if (currentLang == newLang) return;
//     currentLang = newLang;
//     notifyListeners();
//   }
//
//   String getBodySebhaImage() {
//     return currentTheme == ThemeMode.light
//         ? AssetsManager.lightBodySebhaImage
//         : AssetsManager.darkBodySebhaImage;
//   }
//
//   String getHeadSebhaImage() {
//     return currentTheme == ThemeMode.light
//         ? AssetsManager.lightHeadSebhaImage
//         : AssetsManager.darkHeadSebhaImage;
//   }
// }

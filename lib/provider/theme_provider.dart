import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/assets_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;

  void updateAppTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    saveTheme(newTheme); // to save appTheme
    notifyListeners();
  }

  bool isLightTheme() {
    return currentTheme == ThemeMode.light;
  }

  bool isDarkTheme() {
    return currentTheme == ThemeMode.dark;
  }

  String getBackgroundImage() {
    return isLightTheme()
        ? AssetsManager.lightMainBg
        : AssetsManager.darkMainBg;
  }

  void saveTheme(ThemeMode themMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (themMode == ThemeMode.light) {
      prefs.setString('theme', 'light');
    } else {
      prefs.setString('theme', 'dark');
    }
  }

  void getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String theme = prefs.getString('theme') ?? 'light';

    if (theme == 'light') {
      currentTheme = ThemeMode.light;
    } else {
      currentTheme = ThemeMode.dark;
    }
    notifyListeners();
  }

  String getBodySebhaImage() {
    return isLightTheme()
        ? AssetsManager.lightBodySebhaImage
        : AssetsManager.darkBodySebhaImage;
  }

  String getHeadSebhaImage() {
    return isLightTheme()
        ? AssetsManager.lightHeadSebhaImage
        : AssetsManager.darkHeadSebhaImage;
  }
}

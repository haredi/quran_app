import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LangProvider extends ChangeNotifier {
  String currentLang = 'en';

  void updateAppLang(String newLang) {
    if (newLang == currentLang) return;
    currentLang = newLang;
    saveLang(newLang);
    notifyListeners();
  }

  bool isEnglish() {
    return currentLang == 'en';
  }

  bool isArabic() {
    return currentLang == 'ar';
  }

  void saveLang(String lang) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if (lang == 'en') {
      prefs.setString('lang', 'en');
    } else {
      prefs.setString('lang', 'ar');
    }
  }

  void getLang() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String lang = prefs.getString('lang') ?? 'en';

    if (lang == 'en') {
      currentLang = 'en';
    } else {
      currentLang = 'ar';
    }
    notifyListeners();
  }
}

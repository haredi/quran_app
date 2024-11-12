import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/config/theme/my_theme.dart';
import 'package:quran_app/core/utils/routes_manager.dart';
import 'package:quran_app/presentation/home/home_screen.dart';
import 'package:quran_app/presentation/home/tabs/ahadith_tab/hadith_details/hadith_details.dart';
import 'package:quran_app/presentation/home/tabs/quran_tab/widgets/quran_details_screen/quran_details.dart';
import 'package:quran_app/presentation/splash/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran_app/provider/settings_provider.dart';
import 'package:quran_app/provider/theme_provider.dart';

import '../provider/lang_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    var langProvider = Provider.of<LangProvider>(context);
    return MaterialApp(
        localizationsDelegates: [
          AppLocalizations.delegate, // Add this line
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en'), // English
          Locale('ar'), // Spanish
        ],
        locale: Locale(langProvider.currentLang),
        debugShowCheckedModeBanner: false,
        routes: {
          RoutesManager.homeRoute: (_) => HomeScreen(),
          RoutesManager.splashRoute: (_) => SplashScreen(),
          RoutesManager.quranDetailsRoute: (_) => QuranDetails(),
          RoutesManager.hadithDetailsRoute: (_) => HadithDetails(),
        },
        initialRoute: RoutesManager.splashRoute,
        theme: MyTheme.lightTheme,
        darkTheme: MyTheme.darkTheme,
        themeMode: themeProvider.currentTheme);
  }
}

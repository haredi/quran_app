import 'package:flutter/material.dart';
import 'package:quran_app/config/theme/my_theme.dart';
import 'package:quran_app/core/utils/routes_manager.dart';
import 'package:quran_app/presentation/home/home_screen.dart';
import 'package:quran_app/presentation/home/tabs/ahadith_tab/hadith_details/hadith_details.dart';
import 'package:quran_app/presentation/home/tabs/quran_tab/widgets/quran_details_screen/quran_details.dart';
import 'package:quran_app/presentation/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      themeMode: ThemeMode.dark,
    );
  }
}

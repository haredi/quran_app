import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/utils/assets_manager.dart';
import 'package:quran_app/core/utils/routes_manager.dart';
import 'package:quran_app/main.dart';
import 'package:quran_app/provider/theme_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var themeProvider=Provider.of<ThemeProvider>(context);
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RoutesManager.homeRoute);
    });

    return Scaffold(
      body: Image.asset(
        context.read<ThemeProvider>().isLightTheme()
            ? AssetsManager.splashScreen
            : AssetsManager.splashScreenDark,
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}

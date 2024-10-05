import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/assets_manager.dart';
import 'package:quran_app/core/utils/routes_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context, RoutesManager.homeRoute);
    });

    return Scaffold(
      body: Image.asset(AssetsManager.splashScreen,fit: BoxFit.fill ,width: double.infinity ,height: double.infinity,),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/provider/lang_provider.dart';
import 'package:quran_app/provider/settings_provider.dart';
import 'package:quran_app/provider/theme_provider.dart';

import 'my_app/my_app.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider()..getTheme(),
      ),
      ChangeNotifierProvider(
        create: (context) => LangProvider()..getLang(),
      )
    ],
    child: MyApp(),
  ));
}

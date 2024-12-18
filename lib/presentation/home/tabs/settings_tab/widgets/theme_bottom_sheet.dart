import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/provider/lang_provider.dart';
import 'package:quran_app/provider/settings_provider.dart';
import 'package:quran_app/provider/theme_provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                themeProvider.updateAppTheme(ThemeMode.light);
              },
              child: themeProvider.isLightTheme()
                  ? buildSelectedThemeItem(AppLocalizations.of(context)!.light)
                  : buildUnSelectedThemeItem(
                      AppLocalizations.of(context)!.light)),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                themeProvider.updateAppTheme(ThemeMode.dark);
              },
              child: themeProvider.isDarkTheme()
                  ? buildSelectedThemeItem(AppLocalizations.of(context)!.dark)
                  : buildUnSelectedThemeItem(
                      AppLocalizations.of(context)!.dark)),
        ],
      ),
    );
  }

  Widget buildSelectedThemeItem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: Theme.of(context).textTheme.bodyMedium),
        Icon(
          Icons.check,
        ),
      ],
    );
  }

  Widget buildUnSelectedThemeItem(String text) {
    return Row(
      children: [
        Text(text, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}

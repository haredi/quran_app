import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/provider/lang_provider.dart';
import 'package:quran_app/provider/settings_provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var langProvider = Provider.of<LangProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                langProvider.updateAppLang('en');
              },
              child: langProvider.isEnglish()
                  ? buildSelectedLanguage(AppLocalizations.of(context)!.english)
                  : buildUnSelectedLanguage(
                      AppLocalizations.of(context)!.english)),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                langProvider.updateAppLang('ar');
              },
              child: langProvider.isArabic()
                  ? buildSelectedLanguage(AppLocalizations.of(context)!.arabic)
                  : buildUnSelectedLanguage(
                      AppLocalizations.of(context)!.arabic)),
        ],
      ),
    );
  }

  Widget buildSelectedLanguage(String text) {
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

  Widget buildUnSelectedLanguage(String text) {
    return Row(
      children: [
        Text(text, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}

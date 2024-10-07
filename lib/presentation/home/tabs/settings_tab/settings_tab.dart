import 'package:flutter/material.dart';
import 'package:quran_app/presentation/home/tabs/settings_tab/widgets/lunguage_bottom_sheet.dart';
import 'package:quran_app/presentation/home/tabs/settings_tab/widgets/theme_bottom_sheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Theme',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 4,
            ),
            InkWell(
              onTap: () {
                showThemeBottomSheet(context);
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).dividerColor, width: 2),
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    'Light',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 16),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Language',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 4,
            ),
            InkWell(
              onTap: () {
                showLanguageBottomSheet(context);
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).dividerColor, width: 2),
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    'English',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 16),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeBottomSheet(),
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (context) => LanguageBottomSheet());
  }
}

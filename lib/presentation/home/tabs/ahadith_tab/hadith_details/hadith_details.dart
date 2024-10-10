import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/utils/assets_manager.dart';
import 'package:quran_app/presentation/home/tabs/ahadith_tab/ahadith_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../provider/settings_provider.dart';

class HadithDetails extends StatelessWidget {
  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);

    HadithItem hadith =
        ModalRoute.of(context)?.settings.arguments as HadithItem;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(provider.getBackgroundImage()),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.apptitle),
        ),
        body: Card(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  hadith.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Divider(
                    thickness: 2,
                    color: Theme.of(context).dividerColor,
                    endIndent: 12,
                    indent: 12),
                Text(
                  hadith.content,
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

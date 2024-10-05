import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/routes_manager.dart';
import 'package:quran_app/presentation/home/tabs/ahadith_tab/ahadith_tab.dart';

class HadithTitlWidget extends StatelessWidget {
  HadithTitlWidget({super.key, required this.hadith});

  HadithItem hadith;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutesManager.hadithDetailsRoute,
          arguments: hadith,
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Text(hadith.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall),
      ),
    );
  }
}

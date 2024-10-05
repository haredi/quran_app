import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/routes_manager.dart';

class QuranTitleWidget extends StatelessWidget {
  String suraTitle;
  int numOfVerses;
  int index;

  QuranTitleWidget(
      {super.key,
      required this.suraTitle,
      required this.numOfVerses,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RoutesManager.quranDetailsRoute,
              arguments: SuraArgs(suraName: suraTitle, suraIndex: index));
        },
        child: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Text(
                suraTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            VerticalDivider(
              color: Theme.of(context).dividerColor,
              width: 3,
              thickness: 3,
            ),
            Expanded(
              child: Text(
                '$numOfVerses',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuraArgs {
  String suraName;
  int suraIndex;

  SuraArgs({required this.suraName, required this.suraIndex});
}

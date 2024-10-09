import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../core/utils/strings_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChapterName extends StatelessWidget {
  const ChapterName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.symmetric(
        horizontal: BorderSide(
          color: Theme.of(context).dividerColor,
          width: 3,
        ),
      )),
      child: IntrinsicHeight(
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            Expanded(
              child: Text(
                AppLocalizations.of(context)!.chapterName,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            VerticalDivider(
              color: Theme.of(context).dividerColor,
              width: 3,
              thickness: 3,
            ),
            Expanded(
              child: Text(
                AppLocalizations.of(context)!.varsesNubmber,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

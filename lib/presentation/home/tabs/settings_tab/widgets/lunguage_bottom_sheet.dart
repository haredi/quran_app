import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedItem(AppLocalizations.of(context)!.english),
          SizedBox(
            height: 12,
          ),
          buildUnSelectedItem(AppLocalizations.of(context)!.arabic),
        ],
      ),
    );
  }

  Widget buildSelectedItem(String text) {
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

  Widget buildUnSelectedItem(String text) {
    return Text(text, style: Theme.of(context).textTheme.bodyLarge);
  }
}

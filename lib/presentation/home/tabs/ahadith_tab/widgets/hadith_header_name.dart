import 'package:flutter/material.dart';

import '../../../../../core/utils/strings_manager.dart';

class HadithHeaderName extends StatelessWidget {
  const HadithHeaderName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal:
              BorderSide(width: 4, color: Theme.of(context).dividerColor),
        ),
      ),
      child: Text(
        StringsManager.ahadithName,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}

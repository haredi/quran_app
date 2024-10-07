import 'package:flutter/material.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Light', style: Theme.of(context).textTheme.bodyMedium),
              Icon(
                Icons.check,
              ),
            ],
          ),
          Text('Dark', style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }
}

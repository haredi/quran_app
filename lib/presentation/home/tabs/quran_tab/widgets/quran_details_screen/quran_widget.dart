import 'package:flutter/material.dart';

class VersesWidget extends StatelessWidget {
  VersesWidget({super.key, required this.verseItem});

  String verseItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 3),
        child: Text(
          verseItem,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 20),
        ),
      ),
    );
  }
}

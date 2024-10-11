import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/strings_manager.dart';

class SebhaProvider extends ChangeNotifier {
  List<String> texts = [
    StringsManager.sbhanAlla,
    StringsManager.alhmdulla,
    StringsManager.allauqbr,
  ];
  int index = 0;
  double turns = 0;
  int count = 0;

  changeSebhaText() {
    if (count == 33) {
      count = 0;
      index < texts.length - 1 ? index++ : index = 0;
    } else {
      count++;
    }
    turns += 1 / 33;
    notifyListeners();
  }
}

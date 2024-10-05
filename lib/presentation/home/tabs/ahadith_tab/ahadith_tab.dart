import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/core/utils/assets_manager.dart';
import 'package:quran_app/core/utils/strings_manager.dart';
import 'package:quran_app/presentation/home/tabs/ahadith_tab/widgets/hadith_header_name.dart';
import 'package:quran_app/presentation/home/tabs/ahadith_tab/widgets/hadith_title_widget.dart';

class AhadithTab extends StatefulWidget {
  AhadithTab({super.key});

  @override
  State<AhadithTab> createState() => _AhadithTabState();
}

class _AhadithTabState extends State<AhadithTab> {
  List<HadithItem> allHadithItem = [];

  @override
  Widget build(BuildContext context) {
    if (allHadithItem.isEmpty) readHadithFile();
    return Container(
      child: Column(children: [
        Expanded(flex: 1, child: Image.asset(AssetsManager.hadithHeaderImage)),
        HadithHeaderName(),
        Expanded(
          flex: 3,
          child: ListView.separated(
            separatorBuilder: (context, index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              color: Theme.of(context).dividerColor,
              height: 2,
            ),
            itemBuilder: (context, index) =>
                HadithTitlWidget(hadith: allHadithItem[index]),
            itemCount: allHadithItem.length,
          ),
        ),
      ]),
    );
  }

  void readHadithFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadithItemList = fileContent.split('#');
    for (var hadith in hadithItemList) {
      List<String> hadithLines = hadith.trim().split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      String content = hadithLines.join('\n');
      HadithItem hadithItem = HadithItem(title: title, content: content);
      allHadithItem.add(hadithItem);
    }
    setState(() {});
  }
}

class HadithItem {
  String title;
  String content;

  HadithItem({required this.title, required this.content});
}

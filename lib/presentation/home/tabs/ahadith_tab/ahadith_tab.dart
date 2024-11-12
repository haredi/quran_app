import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/utils/assets_manager.dart';
import 'package:quran_app/core/utils/strings_manager.dart';
import 'package:quran_app/presentation/home/tabs/ahadith_tab/widgets/hadith_header_name.dart';
import 'package:quran_app/presentation/home/tabs/ahadith_tab/widgets/hadith_title_widget.dart';
import 'package:quran_app/provider/hadith_provider.dart';

class AhadithTab extends StatefulWidget {
  AhadithTab({super.key});

  @override
  State<AhadithTab> createState() => _AhadithTabState();
}

class _AhadithTabState extends State<AhadithTab> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(flex: 1, child: Image.asset(AssetsManager.hadithHeaderImage)),
      HadithHeaderName(),
      ChangeNotifierProvider(
        create: (context) => HadithProvider(),
        child: Consumer<HadithProvider>(
          builder: (context, value, _) {
            var hadithProvider = Provider.of<HadithProvider>(context);
            if (hadithProvider.allHadithList.isEmpty)
              hadithProvider.readHadithFile();
            return Expanded(
              flex: 3,
              child: ListView.separated(
                separatorBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  color: Theme.of(context).dividerColor,
                  height: 2,
                ),
                itemBuilder: (context, index) => HadithTitlWidget(
                    hadith: hadithProvider.allHadithList[index]),
                itemCount: hadithProvider.allHadithList.length,
              ),
            );
          },
        ),
      ),
    ]);
  }
}

class HadithItem {
  String title;
  String content;

  HadithItem({required this.title, required this.content});
}

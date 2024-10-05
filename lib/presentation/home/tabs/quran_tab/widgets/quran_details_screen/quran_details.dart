import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/core/utils/assets_manager.dart';
import 'package:quran_app/presentation/home/tabs/quran_tab/widgets/quran_details_screen/quran_widget.dart';
import 'package:quran_app/presentation/home/tabs/quran_tab/widgets/quran_title_widget/quran_title_widget.dart';

class QuranDetails extends StatefulWidget {
  QuranDetails({
    super.key,
  });

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    if (verses.isEmpty) readFile(args.suraIndex);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetsManager.lightMainBg), fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              args.suraName,
            ),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 10),
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        VersesWidget(verseItem: verses[index]),
                    itemCount: verses.length,
                  ),
                )),
    );
  }

  void readFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    setState(() {
      verses = fileContent.split('\n');
    });
  }
}

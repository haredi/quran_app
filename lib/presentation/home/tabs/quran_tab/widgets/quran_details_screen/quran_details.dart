import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/utils/assets_manager.dart';
import 'package:quran_app/presentation/home/tabs/quran_tab/widgets/quran_details_screen/quran_widget.dart';
import 'package:quran_app/presentation/home/tabs/quran_tab/widgets/quran_title_widget/quran_title_widget.dart';
import 'package:quran_app/provider/quran_provider.dart';
import 'package:quran_app/provider/theme_provider.dart';

import '../../../../../../provider/settings_provider.dart';

class QuranDetails extends StatefulWidget {
  QuranDetails({
    super.key,
  });

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);

    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    return ChangeNotifierProvider(
      create: (context) => QuranProvider(),
      child: Consumer<QuranProvider>(
        builder: (context, value, _) {
          var quranProvider = Provider.of<QuranProvider>(context);
          if (quranProvider.verses.isEmpty)
            quranProvider.readFile(args.suraIndex);

          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(themeProvider.getBackgroundImage()),
                    fit: BoxFit.fill)),
            child: Scaffold(
                appBar: AppBar(
                  title: Text(
                    args.suraName,
                  ),
                ),
                body: quranProvider.verses.isEmpty
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(top: 25, bottom: 10),
                        child: ListView.builder(
                          itemBuilder: (context, index) => VersesWidget(
                              verseItem: quranProvider.verses[index]),
                          itemCount: quranProvider.verses.length,
                        ),
                      )),
          );
        },
      ),
    );
  }
}

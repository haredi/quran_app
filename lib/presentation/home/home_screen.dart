import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/utils/assets_manager.dart';
import 'package:quran_app/core/utils/strings_manager.dart';
import 'package:quran_app/presentation/home/tabs/ahadith_tab/ahadith_tab.dart';
import 'package:quran_app/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app/presentation/home/tabs/radio_tab/radio_tab.dart';
import 'package:quran_app/presentation/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:quran_app/presentation/home/tabs/settings_tab/settings_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran_app/provider/sebha_provider.dart';
import 'package:quran_app/provider/settings_provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    AhadithTab(),
    ChangeNotifierProvider(
        create: (context) => SebhaProvider(), child: SebhaTab()),
    RadioTab(),
    SettingsTab(),
  ];

  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(provider.getBackgroundImage()), fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.apptitle),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).primaryColor,
          ),
          child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                selectedItem = index;
              });
            },
            currentIndex: selectedItem,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(AssetsManager.quranIcon),
                ),
                label: AppLocalizations.of(context)!.qurqnTab,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(AssetsManager.ahadithIcon),
                ),
                label: AppLocalizations.of(context)!.ahadithTab,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(AssetsManager.sebhaIcon),
                ),
                label: AppLocalizations.of(context)!.sebhaTab,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(AssetsManager.radioIcon),
                ),
                label: AppLocalizations.of(context)!.radioTab,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: AppLocalizations.of(context)!.settingsTab,
              ),
            ],
          ),
        ),
        body: tabs[selectedItem],
      ),
    );
  }
}

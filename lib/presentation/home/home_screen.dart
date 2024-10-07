import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/assets_manager.dart';
import 'package:quran_app/core/utils/strings_manager.dart';
import 'package:quran_app/presentation/home/tabs/ahadith_tab/ahadith_tab.dart';
import 'package:quran_app/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app/presentation/home/tabs/radio_tab/radio_tab.dart';
import 'package:quran_app/presentation/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:quran_app/presentation/home/tabs/settings_tab/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    AhadithTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];

  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AssetsManager.lightMainBg,
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(StringsManager.appTitle),
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
                label: StringsManager.quranLabel,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(AssetsManager.ahadithIcon),
                ),
                label: StringsManager.ahadithLabel,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(AssetsManager.sebhaIcon),
                ),
                label: StringsManager.sebhaLabel,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(AssetsManager.radioIcon),
                ),
                label: StringsManager.radioLabel,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: StringsManager.settingsLabel,
              ),
            ],
          ),
        ),
        body: tabs[selectedItem],
      ),
    );
  }
}

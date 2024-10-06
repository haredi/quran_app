import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedItem = index;
            });
          },
          currentIndex: selectedItem,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).dividerColor,
              icon: ImageIcon(
                AssetImage(AssetsManager.quranIcon),
              ),
              label: 'Quran',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).dividerColor,
              icon: ImageIcon(
                AssetImage(AssetsManager.ahadithIcon),
              ),
              label: StringsManager.quranLabel,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).dividerColor,
              icon: ImageIcon(
                AssetImage(AssetsManager.sebhaIcon),
              ),
              label: StringsManager.ahadithLabel,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).dividerColor,
              icon: ImageIcon(
                AssetImage(AssetsManager.radioIcon),
              ),
              label: StringsManager.sebhaLabel,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).dividerColor,
              icon: Icon(
                Icons.settings,
              ),
              label: StringsManager.settingsLabel,
            ),
          ],
        ),
        body: tabs[selectedItem],
      ),
    );
  }
}

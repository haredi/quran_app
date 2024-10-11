import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/utils/assets_manager.dart';
import 'package:quran_app/core/utils/strings_manager.dart';
import 'package:quran_app/provider/sebha_provider.dart';
import 'package:quran_app/provider/settings_provider.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  @override
  Widget build(BuildContext context) {
    var sephaProvider = Provider.of<SebhaProvider>(context);
    var provider = Provider.of<SettingsProvider>(context);
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              AnimatedRotation(
                  duration: Duration(milliseconds: 500),
                  turns: sephaProvider.turns,
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Image.asset(provider.getBodySebhaImage()))),
              Positioned(
                top: -5,
                left: 115,
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Image.asset(provider.getHeadSebhaImage())),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            StringsManager.tasbehNum,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).primaryColor,
            ),
            alignment: Alignment.center,
            height: 50,
            width: 50,
            child: Text(
              '${sephaProvider.count}',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 8),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).dividerColor),
              onPressed: () {
                sephaProvider.changeSebhaText();
              },
              child: Text(
                sephaProvider.texts[sephaProvider.index],
                style: Theme.of(context).textTheme.displaySmall,
              )),
        ],
      ),
    );
  }
}

import "package:flutter/material.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import "package:provider/provider.dart";
import "package:quran_app_c12_online_sun/core/assets_manager.dart";
import "package:quran_app_c12_online_sun/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart";
import "package:quran_app_c12_online_sun/presentation/screens/home/tabs/quran_tab/quran_tab.dart";
import "package:quran_app_c12_online_sun/presentation/screens/home/tabs/radio_tab/radio_tab.dart";
import "package:quran_app_c12_online_sun/presentation/screens/home/tabs/settings_tab/settings_tab.dart";
import "package:quran_app_c12_online_sun/presentation/screens/home/tabs/tasbeh_tab/tasbeh_tab.dart";
import "package:quran_app_c12_online_sun/providers/theme_provider.dart";

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<ThemeProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                myProvider.isLightTheme()
                    ? AssetsManager.mainBgLight
                    : AssetsManager.mainBgDark,
              ))),
      child: Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.appTitle),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) {
                  // 1
                  selectedIndex = index; // 1
                  setState(() {});
                },
                type: BottomNavigationBarType.shifting,
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage(AssetsManager.quranIcon)),
                      label: AppLocalizations.of(context)!.quranTab),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage(AssetsManager.hadithIcon)),
                      label: AppLocalizations.of(context)!.hadithHeader),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage(AssetsManager.tasbehIcon)),
                      label: AppLocalizations.of(context)!.sebhaTab),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),
                      label: AppLocalizations.of(context)!.radioTab),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: AppLocalizations.of(context)!.settingsTab)
                ]),
          ),
          body: tabs[selectedIndex]),
    );
  }
}

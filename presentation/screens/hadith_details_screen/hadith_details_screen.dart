import "package:flutter/material.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import "package:provider/provider.dart";
import "package:quran_app_c12_online_sun/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart";
import "package:quran_app_c12_online_sun/providers/theme_provider.dart";

import "../../../core/assets_manager.dart";

class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadith hadithArgs = ModalRoute.of(context)?.settings.arguments as Hadith;
    var myProvider = Provider.of<ThemeProvider>(
      context,
    );
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(myProvider.isLightTheme()
                  ? AssetsManager.mainBgLight
                  : AssetsManager.mainBgDark))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle),
        ),
        body: Card(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(hadithArgs.title,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 25, fontWeight: FontWeight.w400)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                  color: Theme.of(context).indicatorColor,
                  height: 1,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    hadithArgs.content,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:quran_app_c12_online_sun/core/assets_manager.dart";
import "package:quran_app_c12_online_sun/presentation/screens/home/tabs/quran_tab/quran_tab.dart";
import "package:quran_app_c12_online_sun/presentation/screens/quran_details_screen/widgets/verse_widget.dart";
import "package:quran_app_c12_online_sun/providers/quran_details_provider.dart";
import "package:quran_app_c12_online_sun/providers/theme_provider.dart";

class QuranDetailsScreen extends StatefulWidget {
  QuranDetailsScreen({super.key});

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var quranProvider = Provider.of<QuranDetailsProvider>(context);
    var themeProvider = Provider.of<ThemeProvider>(context);
    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;
    //  if (verses.isEmpty) readQuranFile(suraItem.index + 1); // 0 // blocking thra
    if (quranProvider.verses.isEmpty)
      quranProvider.readQuranFile(suraItem.index + 1);

    return Stack(
      children: [
        Image.asset(
          themeProvider.isLightTheme()
              ? AssetsManager.mainBgLight
              : AssetsManager.mainBgDark,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(suraItem.suraName),
          ),
          body: quranProvider.verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor),
                )
              : ListView.builder(
                  itemBuilder: (context, index) =>
                      VerseWidget(verse: quranProvider.verses[index]),
                  itemCount: quranProvider.verses.length,
                ),
        ),
      ],
    );
  }

  int add(int n1, int n2) {
    return n1 + n2;
  }

// // sync -> bloc thread // blocking
// void readQuranFile(int index) async {
//   String fileContent =
//       await rootBundle.loadString("assets/files/$index.txt"); // blocking
//
//   setState(() {
//     verses = fileContent.trim().split("\n"); // verses list has a data
//   });
// }
}

import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:quran_app_c12_online_sun/providers/language_provider.dart";

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var langProvider = Provider.of<LanguageProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                langProvider.changeAppLang('en');
              },
              child: langProvider.currentLanguage == 'en'
                  ? buildSelectedItemLangWidget("English")
                  : buildUnSelectedItemLangWidget('English')),
          SizedBox(
            height: 8,
          ),
          InkWell(
              onTap: () {
                langProvider.changeAppLang('ar');
              },
              child: langProvider.currentLanguage == 'ar'
                  ? buildSelectedItemLangWidget('العربيه')
                  : buildUnSelectedItemLangWidget('العربيه'))
        ],
      ),
    );
  }

  Widget buildSelectedItemLangWidget(String selectedLang) {
    return Row(
      children: [
        Text(selectedLang, style: Theme.of(context).textTheme.displayMedium),
        Spacer(),
        Icon(
          Icons.check,
          size: 28,
        )
      ],
    );
  }

  Widget buildUnSelectedItemLangWidget(String unSelectedLang) {
    return Text(
      unSelectedLang,
      style: Theme.of(context)
          .textTheme
          .displayMedium
          ?.copyWith(color: Theme.of(context).colorScheme.secondary),
    );
  }
}

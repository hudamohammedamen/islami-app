import "package:flutter/material.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import "package:provider/provider.dart";
import "package:quran_app_c12_online_sun/presentation/screens/home/tabs/settings_tab/widgets/language_bottom_sheet.dart";
import "package:quran_app_c12_online_sun/presentation/screens/home/tabs/settings_tab/widgets/theme_bottom_sheet.dart";
import "package:quran_app_c12_online_sun/providers/language_provider.dart";
import "package:quran_app_c12_online_sun/providers/theme_provider.dart";

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    var langProvider = Provider.of<LanguageProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        color: Theme.of(context).dividerColor, width: 2)),
                child: Text(
                    themeProvider.isLightTheme()
                        ? AppLocalizations.of(context)!.light
                        : AppLocalizations.of(context)!.dark,
                    style: Theme.of(context).textTheme.labelSmall)),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        color: Theme.of(context).dividerColor, width: 2)),
                child: Text(
                    langProvider.currentLanguage == 'en'
                        ? "English"
                        : "العربيه",
                    style: Theme.of(context).textTheme.labelSmall)),
          )
        ],
      ),
    );
  }

  /// to view bottom sheet
  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (context) => ThemeBottomSheet());
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheet(),
    );
  }
}

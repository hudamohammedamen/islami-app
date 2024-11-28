import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:quran_app_c12_online_sun/my_app/my_app.dart";
import "package:quran_app_c12_online_sun/providers/language_provider.dart";
import "package:quran_app_c12_online_sun/providers/theme_provider.dart";

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => LanguageProvider(),
    )
  ], child: MyApp()));
}



// class SettingsProvider extends ChangeNotifier{
//   // data or state
//   ThemeMode currentTheme = ThemeMode.light;
//   String currentLanguage = 'en';
//
//   void changeAppLanguage(String newLang){ // en
//     if(currentLanguage == newLang)return;
//     currentLanguage = newLang;
//     notifyListeners();
//   }
//
//   void changeAppTheme(ThemeMode newTheme){ // ThemeMode.light
//     if(currentTheme == newTheme) return;
//     currentTheme = newTheme; // dark
//     notifyListeners();
//   }
//
//
//   bool isLightTheme(){
//     return currentTheme == ThemeMode.light;
//   }
//
// }

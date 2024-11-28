import "package:flutter/material.dart";
import "package:quran_app_c12_online_sun/core/colors_manager.dart";

// canvas Color
// -> BottomNAvBar Color
// -> AppBar Color
class MyTheme {
  static bool isDarkEnabled = false;
  static ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: ColorsManager.lightPrimary,
          primary: ColorsManager.lightPrimary,
          onPrimary: Colors.white,
          secondary: Colors.black),
      primaryColor: ColorsManager.lightPrimary,
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
          iconTheme: IconThemeData(color: Colors.black)),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: ColorsManager.lightPrimary,
          showUnselectedLabels: false,
          showSelectedLabels: true,
          elevation: 20,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 40),
          unselectedIconTheme: IconThemeData(size: 26)),
      dividerColor: ColorsManager.lightPrimary,
      cardTheme: CardTheme(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        color: Color(0xFFB7935F).withOpacity(.8),
        elevation: 14,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      indicatorColor: ColorsManager.white,
      iconTheme: IconThemeData(color: Colors.white),
      bottomSheetTheme: BottomSheetThemeData(
          elevation: 12,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          )),
          backgroundColor: ColorsManager.lightPrimary.withOpacity(0.7)),
      textTheme: const TextTheme(
          headlineMedium: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w500,
              color: Color(0xFF242424)),
          titleMedium: TextStyle(
              fontSize: 19,
              color: Color(0xFF242424),
              fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
          labelMedium: TextStyle(
              fontSize: 16,
              color: ColorsManager.lightPrimary,
              fontWeight: FontWeight.w500),
          labelSmall: TextStyle(
              fontSize: 14,
              color: ColorsManager.lightPrimary,
              fontWeight: FontWeight.normal),
          displayMedium: TextStyle(
              fontSize: 21, color: Colors.white, fontWeight: FontWeight.w400)));
  static ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: ColorsManager.darkPrimary,
          primary: ColorsManager.darkPrimary,
          secondary: Colors.white,
          onPrimary: ColorsManager.darkPrimary),
      primaryColor: ColorsManager.darkPrimary,
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
          iconTheme: IconThemeData(color: Colors.white)),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: ColorsManager.darkPrimary,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          elevation: 20,
          selectedItemColor: ColorsManager.yellow,
          unselectedItemColor: ColorsManager.white,
          selectedIconTheme: IconThemeData(size: 33),
          unselectedIconTheme: IconThemeData(size: 33)),
      dividerColor: ColorsManager.yellow,
      cardTheme: CardTheme(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        color: ColorsManager.darkPrimary,
        elevation: 14,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      iconTheme: IconThemeData(color: ColorsManager.yellow),
      indicatorColor: ColorsManager.yellow,
      bottomSheetTheme: BottomSheetThemeData(
          elevation: 12,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          )),
          backgroundColor: ColorsManager.darkPrimary),
      textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w500,
            color: ColorsManager.white,
          ),
          titleMedium: TextStyle(
              fontSize: 19,
              color: ColorsManager.white,
              fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: ColorsManager.yellow),
          labelMedium: TextStyle(
              fontSize: 16,
              color: ColorsManager.yellow,
              fontWeight: FontWeight.w500),
          labelSmall: TextStyle(
              fontSize: 14,
              color: ColorsManager.yellow,
              fontWeight: FontWeight.normal),
          displayMedium: TextStyle(
              fontSize: 21,
              color: Colors.yellow,
              fontWeight: FontWeight.w400)));
}

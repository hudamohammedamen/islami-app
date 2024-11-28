import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuranDetailsProvider extends ChangeNotifier {
  List<String> verses = [];

  void readQuranFile(int index) async {
    String fileContent =
        await rootBundle.loadString("assets/files/$index.txt"); // blocking

    verses = fileContent.trim().split("\n"); //
    print('Hello');
    notifyListeners(); // verses list has a data
  }
}

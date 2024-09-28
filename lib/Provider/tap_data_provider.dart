import 'package:flutter/material.dart';

class TabDataProvider with ChangeNotifier {
  String _tab = "none";

  String get TabData => _tab;
  void changeTabData(String newData) {
    _tab = newData;
    notifyListeners();
  }
}

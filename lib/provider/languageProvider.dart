import 'package:flutter/material.dart';

class LanguageProvider with ChangeNotifier {
  String _language = 'English';

  String get language => _language;

  void changeLanguage(String language) {
    _language = language;
    notifyListeners();
  }

  void toggleLanguage() {
    if (_language == 'English') {
      _language = 'Assamese';
    } else {
      _language = 'English';
    }
    notifyListeners();
  }
}
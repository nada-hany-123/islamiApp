import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
   String get backgroundimagePath => themeMode==ThemeMode.light
       ?'bg3':
   'bg';
  void changeTheme(ThemeMode selectedTheme){
    themeMode=selectedTheme;
    notifyListeners();
  }

}
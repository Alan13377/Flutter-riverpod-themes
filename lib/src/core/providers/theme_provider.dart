import 'package:aplicacion_notas/src/ui/configure.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final ThemeAppProvider = ChangeNotifierProvider((ref) => ThemeAppState());

class ThemeAppState extends ChangeNotifier {
  bool isDarkModeEnable = false;
  late SharedPreferences prefs;

  ThemeAppState() {
    _init();
  }

  Future _init() async {
    prefs = await SharedPreferences.getInstance();
    var darkMode = prefs.getBool("darkMode");
    isDarkModeEnable = darkMode ?? false;
    notifyListeners();
  }

  //*Cambiar a lightMode
  void setLightTheme() {
    isDarkModeEnable = false;
    prefs.setBool("darkMode", isDarkModeEnable);
    notifyListeners();
  }

  //*Cambiar a darkmode
  void setDarkMode() {
    isDarkModeEnable = true;
    prefs.setBool("darkMode", isDarkModeEnable);
    notifyListeners();
  }
}

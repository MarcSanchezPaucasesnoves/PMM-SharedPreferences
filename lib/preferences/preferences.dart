import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _nom = "";
  static bool _isDarkMode = false;
  static int _genere = 1;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get nom {
    return _prefs.getString("nom") ?? _nom;
  }

  static set nom(String value) {
    _nom = nom;
    _prefs.setString("nom", value);
  }

  static String get isDarkMode {
    return _prefs.getBool("isDarkMode") ?? _isDarkMode;
  }

  static set isDarkMode(String value) {
    _isDarkMode = isDarkMode;
    _prefs.setString("isDarkMode", value);
  }
}
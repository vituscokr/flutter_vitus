import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtil {
  static Future<void> removePreferences(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }

  static Future<void> setPreferencesStringList(String key, List<String> data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList(key, data);
  }

  static Future<void> setPreferencesString(String key, String data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, data);
  }

  static Future<List<String>?> getPreferencesStringList(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(key);
  }

  static Future<String?> getPreferencesString(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  static Future<void> setPreferencesInt(String key, int data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, data);
  }

  static Future<int?> getPreferencesInt(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  static Future<void> setPreferencesDouble(String key, double data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble(key, data);
  }

  static Future<double?> getPreferencesDouble(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key);
  }

  static Future<void> setPreferencesBoolean(String key, bool data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, data);
  }

  static Future<bool?> getPreferencesBoolean(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }
}
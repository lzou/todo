import 'package:shared_preferences/shared_preferences.dart';

class utils {
  static getAudioState() async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('audioFlag') ?? true;
  }

  static setAudioState(flag) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setBool('audioFlag', flag);
  }
}
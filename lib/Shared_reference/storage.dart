import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  static late SharedPreferences _prefs;

  static Future init() async => _prefs = await SharedPreferences.getInstance();

  Future setFunnyJoke(int id, bool isFunny) async {
    await _prefs.setBool('funnyJokeId ${id}', isFunny);
    await _prefs.reload();
  }

  bool? getFunnyJoke(int id) {
    return _prefs.getBool('funnyJokeId ${id}');
  }
}

import 'package:shared_preferences/shared_preferences.dart';

int bookmarkedAyah = 1;
int bookmarkedSura = 1;
double font = 28;
double mushafFontSize = 28;
Future saveSetting() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setInt('font', font.toInt());
  await prefs.setInt('mushafFontSize', mushafFontSize.toInt());
}

Future getSetting() async {
  try {
    final prefs = await SharedPreferences.getInstance();
    font = await prefs.getInt('font')!.toDouble();
    mushafFontSize = await prefs.getInt('mushafFontSize')!.toDouble();
  } catch (_) {
    font = 28;
    mushafFontSize = 40;
  }
}

saveBookMark(surah, ayah) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setInt("surah", surah);
  await prefs.setInt("ayah", ayah);
}

readBookmark() async {
  print("read book mark called");
  final prefs = await SharedPreferences.getInstance();
  try {
    bookmarkedAyah = prefs.getInt('ayah')!;
    bookmarkedSura = prefs.getInt('surah')!;
    return true;
  } catch (e) {
    return false;
  }
}

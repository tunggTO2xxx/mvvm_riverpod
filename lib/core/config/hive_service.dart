import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  HiveService._();

  static final I = HiveService._();

  static const String _boxName = 'hive_box';
  static const String _languageKey = 'language_key';

  static late final Box<dynamic> hiveBox;

  Future<void> init() async {
    await Hive.initFlutter();
    hiveBox = await Hive.openBox(_boxName);
  }

  Locale? get languageCode {
    if (hiveBox.get(_languageKey) == null) {
      return null;
    } else {
      return Locale(hiveBox.get(_languageKey).toString());
    }
  }

  Future<void> setLanguageCode(Locale? locale) {
    return hiveBox.put(_languageKey, locale?.languageCode);
  }
}

import 'package:flutter/material.dart';

enum SupportLanguageType { vi, en }

class LanguageHelper {
  LanguageHelper._();

  static final I = LanguageHelper._();

  String getLocaleString(SupportLanguageType localeEnum) {
    return localeEnum.toString().split('.').last;
  }

  Locale getLocaleByInt(int language) {
    switch (language) {
      case 0:
        return Locale(SupportLanguageType.vi.name);
      case 1:
        return Locale(SupportLanguageType.en.name);
      default:
        return Locale(SupportLanguageType.vi.name);
    }
  }
}

import 'dart:ui' as ui;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_riverpod_base/core/config/hive_service.dart';
import 'package:mvvm_riverpod_base/utils/helper/language_helper/language_helper.dart';
import 'package:mvvm_riverpod_base/utils/helper/language_helper/language_state.dart';

final languageProvider = StateNotifierProvider<LocaleStateNotifier, LanguageState>(
  (_) => LocaleStateNotifier(),
);

class LocaleStateNotifier extends StateNotifier<LanguageState> {
  LocaleStateNotifier() : super(const LanguageState()) {
    fetchDefaultLocale();
  }

  Future<void> fetchDefaultLocale() async {
    final applicationLocale = HiveService.I.languageCode;

    if (applicationLocale == null) {
      await fetchSystemLocale();
      return;
    }

    state = state.copyWith(locale: applicationLocale);
  }

  Future<void> fetchSystemLocale() async {
    final systemLocale = ui.window.locale.languageCode;

    final listLocale = SupportLanguageType.values
        .map(LanguageHelper.I.getLocaleString)
        .toList();

    if (listLocale.contains(systemLocale)) {
      state = state.copyWith(locale: Locale(systemLocale));

      await HiveService.I.setLanguageCode(Locale(systemLocale));
    }
  }

  Future<void> setLocale(String code) async {
    final getLanguageByCode = SupportLanguageType.values
        .where((e) => LanguageHelper.I.getLocaleString(e) == code)
        .toList();
    var languageType = SupportLanguageType.vi;

    if (getLanguageByCode.isNotEmpty) {
      languageType = getLanguageByCode.first;
    }

    state = state.copyWith(locale: getLocale(languageType));

    await HiveService.I.setLanguageCode(getLocale(languageType));
  }

  ui.Locale getLocale(SupportLanguageType languageType) {
    return ui.Locale(languageType.name);
  }
}

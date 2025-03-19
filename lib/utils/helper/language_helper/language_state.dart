import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_state.freezed.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState({
    @Default(Locale('vi')) Locale locale,
  }) = _LanguageState;
  
  @override
  // TODO: implement locale
  Locale get locale => throw UnimplementedError();
}

import 'package:flutter/material.dart';

abstract class AppConstants {
  AppConstants._();

  static const List<String> _supportedLanguages = [enLocale, arLocale];
  static const List<Locale> _supportedLocales = [
    Locale(enLocale, ''),
    Locale(arLocale, '')
  ];

  static List<String> get supportedLanguages => _supportedLanguages;
  static List<Locale> get supportedLocales => _supportedLocales;
  static const String arLocale = 'ar';
  static const String enLocale = 'en';
}

enum RequestStatus { initial, inProgress, success, failure }

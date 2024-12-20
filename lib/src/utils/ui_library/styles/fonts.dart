import 'package:flutter/material.dart';

const String kPrimaryFontFamily = 'Rosario';
const String kSecondaryFontFamily = 'PalanquinDark';

TextTheme kTextTheme = const TextTheme(
  displayLarge: TextStyle(
    fontFamily: kSecondaryFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  ),
  displayMedium: TextStyle(
    fontFamily: kSecondaryFontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  ),
  bodyLarge: TextStyle(
    fontFamily: kPrimaryFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  ),
  bodySmall: TextStyle(
    fontFamily: kPrimaryFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w300,
  ),
);

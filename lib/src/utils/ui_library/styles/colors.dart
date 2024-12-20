import 'package:flutter/material.dart';

const Color raspberry = Color(0xFFCE2D4F);
const Color blush = Color(0xFFCE6D8B);
const Color thistle = Color(0xFFCEBBC9);
const Color risdBlue = Color(0xFF4056F4);
const Color blue = Color(0xFF470FF4);

ColorScheme kColorScheme = const ColorScheme.light(
  primary: raspberry,
  secondary: risdBlue,
  background: thistle,
  surface: blush,
  error: Color(0xFFE57373),
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onBackground: Colors.black,
  onSurface: Colors.black,
  onError: Colors.white,
);

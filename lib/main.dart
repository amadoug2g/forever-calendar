import 'package:flutter/material.dart';
import 'package:forever_calendar/src/features/home_screen.dart';
import 'package:forever_calendar/src/utils/ui_library/styles/theme.dart';

void main() => runApp(const ForeverCalendarApp());

class ForeverCalendarApp extends StatelessWidget {
  const ForeverCalendarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Forever Calendar',
      theme: mainAppTheme,
      debugShowCheckedModeBanner: false,
      home: const SafeArea(child: HomeScreen()),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:forever_calendar/src/features/home_screen.dart';
import 'package:forever_calendar/src/utils/ui_library/styles/theme.dart';
import 'package:forever_calendar/src/utils/ui_library/widgets/texts/app_main_title.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Forever Calendar',
      theme: mainAppTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 4,
          title: const Center(
            child: AppTitle(),
          ),
        ),
        body: const Center(
          child: HomeScreen(),
        ),
      ),
    );
  }
}

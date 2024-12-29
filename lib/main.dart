import 'package:flutter/material.dart';
import 'package:forever_calendar/src/features/contact/presentation/new_contact_screen.dart';
import 'package:forever_calendar/src/features/event/presentation/new_event_screen.dart';
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
      initialRoute: "/",
      routes: {
        "/newContact": (context) => const NewContactScreen(),
        "/newEvent": (context) => const NewEventScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: const SafeArea(child: HomeScreen()),
    );
  }
}

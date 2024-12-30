import 'package:flutter/material.dart';
import 'package:forever_calendar/src/features/contact/domain/contact.dart';
import 'package:forever_calendar/src/features/contact/presentation/new_contact_screen.dart';
import 'package:forever_calendar/src/features/event/domain/event.dart';
import 'package:forever_calendar/src/features/event/presentation/new_event_screen.dart';
import 'package:forever_calendar/src/features/home_screen.dart';
import 'package:forever_calendar/src/utils/ui_library/styles/theme.dart';

void main() => runApp(const ForeverCalendarApp());

class ForeverCalendarApp extends StatelessWidget {
  const ForeverCalendarApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Contact> contacts = [
      Contact(
        id: "C1",
        firstName: "John",
        lastName: "Doe",
      ),
      Contact(
        id: "C2",
        firstName: "Janet",
        lastName: "Jackson",
      ),
    ];
    final List<Event> events = [
      Event(
        id: "E1",
        title: "Meeting",
        description: "Nothing important :)",
        eventDate: DateTime(2024, 11, 25),
      ),
      Event(
        id: "E2",
        title: "Birthday",
        description: "Special day indeed",
        eventDate: DateTime(1997, 3, 11),
      ),
    ];

    return MaterialApp(
      title: 'The Forever Calendar',
      theme: mainAppTheme,
      initialRoute: "/",
      routes: {
        "/newContact": (context) => const NewContactScreen(),
        "/newEvent": (context) => const NewEventScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: HomeScreen(
        contacts: contacts,
        events: events,
      )),
    );
  }
}

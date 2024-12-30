import 'package:flutter/material.dart';
import 'package:forever_calendar/src/features/contact/domain/contact.dart';
import 'package:forever_calendar/src/features/event/domain/event.dart';
import 'package:forever_calendar/src/utils/ui_library/styles/colors.dart';
import 'package:forever_calendar/src/utils/ui_library/widgets/lists/contact_list.dart';
import 'package:forever_calendar/src/utils/ui_library/widgets/lists/event_list.dart';
import 'package:forever_calendar/src/utils/ui_library/widgets/texts/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    required this.contacts,
    required this.events,
    super.key,
  });

  final List<Contact> contacts;
  final List<Event> events;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<BottomNavigationBarItem> navigationItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.calendar_month),
      label: "Events",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "Contacts",
    ),
  ];

  final Map<int, String> fabLabels = {
    0: "New Event",
    1: "New Contact",
  };

  Widget pickView() {
    if (currentIndex == 0) {
      return EventList(
        list: widget.events,
        sectionTitle: "Events",
        colorCard: surfaceColor,
      );
    } else {
      return ContactList(
        list: widget.contacts,
        sectionTitle: "Contacts",
        colorCard: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final Map<int, VoidCallback> fabActions = {
      0: () => Navigator.pushNamed(context, '/newEvent'),
      1: () => Navigator.pushNamed(context, '/newContact'),
    };

    return Scaffold(
      body: Column(
        children: [
          const AppGreeting(),
          Expanded(child: pickView()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: navigationItems,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: fabActions[currentIndex],
        label: Text(fabLabels[currentIndex]!),
        icon: const Icon(Icons.add),
      ),
    );
  }
}

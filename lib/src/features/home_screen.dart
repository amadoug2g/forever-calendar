import 'package:flutter/material.dart';
import 'package:forever_calendar/src/features/contact/presentation/contact_screen.dart';
import 'package:forever_calendar/src/features/event/presentation/event_screen.dart';
import 'package:forever_calendar/src/utils/ui_library/widgets/texts/app_main_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppTitle(),
        centerTitle: true,
      ),
      body: currentIndex == 0 ? const EventScreen() : const ContactScreen(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Events",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Contacts",
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}

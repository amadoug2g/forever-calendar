import 'package:flutter/cupertino.dart';
import 'package:forever_calendar/src/features/contact/presentation/contact_screen.dart';
import 'package:forever_calendar/src/features/event/presentation/event_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isEventView = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isEventView ? const EventScreen() : const ContactScreen(),
    );
  }
}

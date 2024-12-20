import 'package:flutter/cupertino.dart';
import 'package:forever_calendar/src/features/contact/presentation/contact_screen.dart';
import 'package:forever_calendar/src/features/event/presentation/event_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({required this.isEventView, super.key});

  final bool isEventView;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: widget.isEventView ? const EventScreen() : const ContactScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:forever_calendar/src/utils/ui_library/styles/colors.dart';
import 'package:forever_calendar/src/utils/ui_library/widgets/lists/main_list.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({
    required this.eventList,
    super.key,
  });

  final List<String> eventList;

  Widget eventView() {
    if (eventList.isEmpty) {
      return const Center(child: Text("No events at the moment"));
    } else {
      return EventList(list: eventList);
    }
  }

  @override
  Widget build(BuildContext context) {
    return eventView();
  }
}

class EventList extends StatelessWidget {
  const EventList({
    required this.list,
    super.key,
  });

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return MainList(
      list: list,
      sectionTitle: list.length > 1 ? "Upcoming Events" : "Upcoming Event",
    );
  }
}

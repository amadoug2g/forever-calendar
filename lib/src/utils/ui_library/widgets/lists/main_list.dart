import 'package:flutter/material.dart';
import 'package:forever_calendar/src/features/contact/domain/contact.dart';
import 'package:forever_calendar/src/features/event/domain/event.dart';
import 'package:forever_calendar/src/utils/ui_library/widgets/texts/text.dart';

class ContactList extends StatelessWidget {
  const ContactList({
    required this.list,
    required this.sectionTitle,
    required this.colorCard,
    super.key,
  });

  final List<Contact> list;
  final String sectionTitle;
  final Color colorCard;

  @override
  Widget build(BuildContext context) {
    if (list.isEmpty) {
      return const Center(child: Text("No contacts at the moment"));
    } else {
      return Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeader(text: sectionTitle),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return ContactCard(
                    contactList: list,
                    index: index,
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({
    required this.contactList,
    required this.index,
    super.key,
  });

  final List<Contact> contactList;
  final int index;

  @override
  Widget build(BuildContext context) {
    final contact = contactList[index];
    return Container(
      height: 60,
      color: Theme.of(context).colorScheme.surface,
      child: Center(
        child: Text("$contact"),
      ),
    );
  }
}

class EventList extends StatelessWidget {
  const EventList({
    required this.list,
    required this.sectionTitle,
    required this.colorCard,
    super.key,
  });

  final List<Event> list;
  final String sectionTitle;
  final Color colorCard;

  @override
  Widget build(BuildContext context) {
    if (list.isEmpty) {
      return const Center(child: Text("No events at the moment"));
    } else {
      return Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeader(text: sectionTitle),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return EventCard(
                    eventList: list,
                    index: index,
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}

class EventCard extends StatelessWidget {
  const EventCard({
    required this.eventList,
    required this.index,
    super.key,
  });

  final List<Event> eventList;
  final int index;

  @override
  Widget build(BuildContext context) {
    final event = eventList[index];
    return Container(
      height: 60,
      color: Theme.of(context).colorScheme.surface,
      child: Center(
        child: Column(
          children: [
            Text(event.title),
            Text(event.getFormattedEventDate()),
          ],
        ),
      ),
    );
  }
}

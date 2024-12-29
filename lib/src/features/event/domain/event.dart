import 'package:forever_calendar/src/features/contact/domain/note.dart';

class Event {
  Event({
    required this.id,
    required this.title,
    required this.description,
    required this.eventDate,
    this.participantID = const [],
    this.tags = const [],
  }) : createdTime = DateTime.now();

  final String id;
  final String title;
  final String description;
  DateTime eventDate;
  List<String> participantID;
  List<Tag> tags;
  DateTime createdTime;
}

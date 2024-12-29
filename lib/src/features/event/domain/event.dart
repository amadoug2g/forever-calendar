import 'package:forever_calendar/src/features/contact/domain/note.dart';
import 'package:intl/intl.dart';

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

  String getFormattedEventDate() {
    final DateFormat formatter = DateFormat('dd/MM/yyyy');
    return formatter.format(eventDate);
  }
}

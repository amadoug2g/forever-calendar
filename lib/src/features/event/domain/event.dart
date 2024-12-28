import 'package:forever_calendar/src/features/contact/domain/note.dart';

class Event {
  Event({
    required this.id,
    required this.title,
    required this.description,
    required this.participantID,
    required this.tags,
    required this.createdTime,
  });

  String id;
  String title;
  String description;
  List<String> participantID = const [];
  List<Tag> tags = const [];
  DateTime createdTime;
}

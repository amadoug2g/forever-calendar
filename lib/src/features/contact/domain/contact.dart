import 'package:forever_calendar/src/features/contact/domain/note.dart';

class Contact {
  Contact({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.notes,
    required this.groups,
    required this.createdTime,
  });

  String id;
  String firstName;
  String lastName;
  List<Note> notes = const [];
  List<Group> groups = const [];
  DateTime createdTime;

  @override
  String toString() => 'Contact: $firstName $lastName';
}

class Group {
  Group({
    required this.id,
    required this.name,
    required this.description,
  });

  String id;
  String name;
  String description;
}

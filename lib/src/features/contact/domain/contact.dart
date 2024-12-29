import 'package:forever_calendar/src/features/contact/domain/note.dart';

class Contact {
  Contact({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.notes = const [],
    this.groups = const [],
  }) : createdTime = DateTime.now();

  final String id;
  final String firstName;
  final String lastName;
  List<Note> notes;
  List<Group> groups;
  final DateTime createdTime;

  @override
  String toString() => '$firstName $lastName';
}

class Group {
  Group({
    required this.id,
    required this.name,
    required this.description,
  });

  final String id;
  String name;
  String description;
}

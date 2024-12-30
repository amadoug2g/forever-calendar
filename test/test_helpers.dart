import 'package:flutter/material.dart';
import 'package:forever_calendar/src/features/contact/domain/contact.dart';
import 'package:forever_calendar/src/features/event/domain/event.dart';

/// Test Data
final List<Contact> contacts = [
  Contact(
    id: "C1",
    firstName: "John",
    lastName: "Doe",
  ),
  Contact(
    id: "C2",
    firstName: "Janet",
    lastName: "Jackson",
  ),
];

final List<Event> events = [
  Event(
    id: "E1",
    title: "Meeting",
    description: "Nothing important :)",
    eventDate: DateTime(2024, 11, 25),
  ),
  Event(
    id: "E2",
    title: "Birthday",
    description: "Special day indeed",
    eventDate: DateTime(1997, 3, 11),
  ),
];

/// Test App Helper
Widget createTestApp(Widget home) {
  return MaterialApp(home: home);
}

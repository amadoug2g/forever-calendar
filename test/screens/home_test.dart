import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:forever_calendar/src/features/contact/domain/contact.dart';
import 'package:forever_calendar/src/features/event/domain/event.dart';
import 'package:forever_calendar/src/features/home_screen.dart';
import 'package:forever_calendar/src/utils/ui_library/widgets/lists/contact_list.dart';

void main() {
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

  const emptyHomeScreen = HomeScreen(contacts: [], events: []);
  final populatedHomeScreen = HomeScreen(contacts: contacts, events: events);

  group('Interface', () {
    testWidgets('Home shows BottomAppBar', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: emptyHomeScreen));
      expect(find.byType(BottomNavigationBar), findsOneWidget);
    });
    testWidgets('Event view shows FAB', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: emptyHomeScreen));
      expect(find.byType(FloatingActionButton), findsOneWidget);
      expect(find.text("Events"), findsOneWidget);
    });
    testWidgets('Tapping Contacts tab shows Contact view', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: emptyHomeScreen));
      await tester.tap(find.text("Contacts"));
      expect(find.byType(FloatingActionButton), findsOneWidget);
      expect(find.text("Contacts"), findsOneWidget);
    });
  });

  group('Event', () {
    testWidgets('No events shows empty status message', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: emptyHomeScreen));
      expect(find.text("No events at the moment"), findsOneWidget);
    });
    test('Populated event list returned successfully', () {});
    test('Added event shows in event list', () {});
    test('Deleted event does not show in event list', () {});
    test('Updated event changes in event list', () {});
  });

  group('Contact', () {
    test('No contacts shows empty status message', () {});
    test('Populated contact list returned successfully', () {});
    test('Added contact shows in contact list', () {});
    test('Deleted contact does not show in contact list', () {});
    test('Updated contact changes in contact list', () {});
  });
}

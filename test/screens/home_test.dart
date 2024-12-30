import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:forever_calendar/src/features/home_screen.dart';
import 'package:forever_calendar/src/utils/ui_library/widgets/lists/contact_list.dart';
import 'package:forever_calendar/src/utils/ui_library/widgets/lists/event_list.dart';
import '../test_helpers.dart';

void main() {
  final emptyHomeScreen =
      createTestApp(const HomeScreen(contacts: [], events: []));
  final populatedHomeScreen =
      createTestApp(HomeScreen(contacts: contacts, events: events));

  group('Interface', () {
    testWidgets('Shows BottomAppBar on Home', (WidgetTester tester) async {
      await tester.pumpWidget(emptyHomeScreen);
      expect(find.byType(BottomNavigationBar), findsOneWidget);
    });
    testWidgets('Display FAB when viewing events', (WidgetTester tester) async {
      await tester.pumpWidget(emptyHomeScreen);
      expect(find.byType(FloatingActionButton), findsOneWidget);
      expect(find.text("Events"), findsOneWidget);
    });
    testWidgets('Shows Contact view when tapping Contacts',
        (WidgetTester tester) async {
      await tester.pumpWidget(emptyHomeScreen);
      await tester.tap(find.text("Contacts"));
      await tester.pumpAndSettle();
      expect(find.byType(ContactList), findsOneWidget);
      expect(find.text("No contacts at the moment"), findsOneWidget);
    });
  });

  group('Event', () {
    testWidgets('Shows status message on empty events list',
        (WidgetTester tester) async {
      await tester.pumpWidget(emptyHomeScreen);
      expect(find.text("No events at the moment"), findsOneWidget);
    });
    testWidgets('Returns events on populated list',
        (WidgetTester tester) async {
      await tester.pumpWidget(populatedHomeScreen);
      expect(find.widgetWithText(EventCard, "Meeting"), findsOneWidget);
      expect(find.widgetWithText(EventCard, "Birthday"), findsOneWidget);
      expect(find.text("No events at the moment"), findsNothing);
    });
  });

  group('Contact', () {
    testWidgets('Returns contacts on populated list',
        (WidgetTester tester) async {
      await tester.pumpWidget(populatedHomeScreen);
      await tester.tap(find.text("Contacts"));
      await tester.pumpAndSettle();

      expect(find.byType(ContactList), findsOneWidget);
      expect(find.text("John Doe"), findsOneWidget);
      expect(find.text("Janet Jackson"), findsOneWidget);
      expect(find.text("No contacts at the moment"), findsNothing);
    });
  });
}

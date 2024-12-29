import 'package:flutter_test/flutter_test.dart';
import 'package:forever_calendar/src/features/event/domain/event.dart';

void main() {
  group('Event', () {
    test('getFormattedEventDate returns correct format', () {
      final event = Event(
        id: "E1",
        title: "Meeting",
        description: "Nothing important :)",
        eventDate: DateTime(2024, 12, 25),
      );

      final formattedDate = event.getFormattedEventDate();

      expect(formattedDate, "25/12/2024");
    });
  });
}

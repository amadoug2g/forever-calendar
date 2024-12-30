import 'package:flutter_test/flutter_test.dart';
import 'package:forever_calendar/src/features/contact/domain/contact.dart';

void main() {
  group('Contact', () {
    test('toString returns contact formatted', () {
      final contact = Contact(
        id: "C1",
        firstName: "John",
        lastName: "Doe",
      );
      
      expect(contact.toString(), "${contact.firstName} ${contact.lastName}");
    });
  });
}

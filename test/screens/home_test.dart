import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Interface', () {
    test('Home shows BottomAppBar', () {});
    test('Event view shows FAB', () {});
    test('Contact view shows FAB', () {});
    test('Tapping Events tab shows Event view', () {});
    test('Tapping Contacts tab shows Contact view', () {});
  });

  group('Event', () {
    test('No events shows empty status message', () {});
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

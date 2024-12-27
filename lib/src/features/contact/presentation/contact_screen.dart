import 'package:flutter/material.dart';
import 'package:forever_calendar/src/utils/ui_library/styles/colors.dart';
import 'package:forever_calendar/src/utils/ui_library/widgets/lists/main_list.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({
    required this.contactList,
    super.key,
  });

  final List<String> contactList;

  Widget contactView() {
    if (contactList.isEmpty) {
      return const Center(child: Text("No contacts at the moment"));
    } else {
      return ContactList(list: contactList);
    }
  }

  @override
  Widget build(BuildContext context) {
    return contactView();
  }
}

class ContactList extends StatelessWidget {
  const ContactList({
    required this.list,
    super.key,
  });

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return MainList(
      list: list,
      sectionTitle: list.length > 1 ? "Upcoming Contacts" : "Upcoming Contact",
    );
  }
}

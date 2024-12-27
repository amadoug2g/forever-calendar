import 'package:flutter/material.dart';
import 'package:forever_calendar/src/utils/ui_library/styles/colors.dart';
import 'package:forever_calendar/src/utils/ui_library/widgets/lists/main_list.dart';
import 'package:forever_calendar/src/utils/ui_library/widgets/texts/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<BottomNavigationBarItem> navigationItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.calendar_month),
      label: "Events",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "Contacts",
    ),
  ];
  List<String> eventList = [];
  List<String> contactList = [];

  final Map<int, String> fabLabels = {
    0: "New Event",
    1: "New Contact",
  };

  final Map<int, VoidCallback> fabActions = {
    0: () => debugPrint("from EVENT"),
    1: () => debugPrint("from CONTACT"),
  };

  Widget pickView() {
    if (currentIndex == 0) {
      return DynamicListScreen(
        list: eventList,
        sectionTitle: "Events",
        colorCard: surfaceColor,
      );
    } else {
      return DynamicListScreen(
        list: contactList,
        sectionTitle: "Contacts",
        colorCard: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppGreeting(),
          Expanded(child: pickView()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: navigationItems,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: fabActions[currentIndex],
        label: Text(fabLabels[currentIndex]!),
        icon: const Icon(Icons.add),
      ),
    );
  }
}

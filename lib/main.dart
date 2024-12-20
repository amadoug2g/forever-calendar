import 'package:flutter/material.dart';
import 'package:forever_calendar/src/features/contact/presentation/contact_screen.dart';
import 'package:forever_calendar/src/features/event/presentation/event_screen.dart';
import 'package:forever_calendar/src/utils/ui_library/styles/theme.dart';
import 'package:forever_calendar/src/utils/ui_library/widgets/texts/app_main_title.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  void changeTab(int value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Forever Calendar',
      theme: mainAppTheme,
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const AppTitle(),
            centerTitle: true,
          ),
          body: Column(
            children: [
              const Divider(color: Colors.grey,),
              Expanded(
                child: currentIndex == 0
                    ? const EventScreen()
                    : const ContactScreen(),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: "Events",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Contacts",
              )
            ],
            currentIndex: currentIndex,
            onTap: changeTab,
          ),
        ),
      ),
    );
  }
}

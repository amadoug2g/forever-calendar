import 'package:flutter/material.dart';
import 'package:forever_calendar/src/features/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Forever Calendar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("The Forever Calendar"),
        ),
        body: const Center(
          child: HomeScreen(),
        ),
      ),
    );
  }
}

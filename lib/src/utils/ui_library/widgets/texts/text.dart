import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24,
        fontFamily: "PlanquinDark",
        fontWeight: FontWeight.w900,
      ),
    );
  }
}

class AppGreeting extends StatelessWidget {
  const AppGreeting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.all(8),
      color: Theme.of(context).colorScheme.primary,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Good evening",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "PlanquinDark",
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

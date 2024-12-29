import 'package:flutter/material.dart';
import 'package:forever_calendar/src/utils/ui_library/widgets/texts/custom_input_field.dart';

class NewEventScreen extends StatelessWidget {
  const NewEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstNameController = TextEditingController();
    final TextEditingController lastNameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("New event"),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Column(
            children: [
              CustomInputField(
                labelText: "Title",
                controller: firstNameController,
              ),
              CustomInputField(
                labelText: "Description",
                controller: lastNameController,
                hasMultiLine: true,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Add event",
            ),
          ),
        ],
      ),
    );
  }
}

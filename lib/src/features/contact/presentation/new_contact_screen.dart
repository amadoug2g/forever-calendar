import 'package:flutter/material.dart';
import 'package:forever_calendar/src/utils/ui_library/widgets/texts/custom_input_field.dart';

class NewContactScreen extends StatelessWidget {
  const NewContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstNameController = TextEditingController();
    final TextEditingController lastNameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("New contact"),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Column(
            children: [
              CustomInputField(
                labelText: "First Name",
                controller: firstNameController,
              ),
              CustomInputField(
                labelText: "Last Name",
                controller: lastNameController,
              ),
              CustomInputField(
                labelText: "Notes",
                controller: lastNameController,
                hasMultiLine: true,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Add contact",
            ),
          ),
        ],
      ),
    );
  }
}

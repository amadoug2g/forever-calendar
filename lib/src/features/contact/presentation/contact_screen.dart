import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: 40,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 60,
          color: Colors.blue,
          child: const Center(
            child: Text("Contact"),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.grey,),
    );
  }
}

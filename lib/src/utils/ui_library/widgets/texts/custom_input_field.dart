import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    required this.labelText,
    required this.controller,
    this.hasMultiLine = false,
    this.keyboardType = TextInputType.text,
    super.key,
  });

  final String labelText;
  final TextEditingController controller;
  final bool hasMultiLine;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: hasMultiLine ? 5 : 1,
        decoration: InputDecoration(
          labelText: labelText,
          alignLabelWithHint: true,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}

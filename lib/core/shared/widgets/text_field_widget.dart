import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hint;
  final IconData icon;
  final TextEditingController controller;

  const TextFieldWidget({required this.hint, required this.icon, required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: Colors.cyan,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon, color: Colors.cyan),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.cyan),
          borderRadius: BorderRadius.circular(18),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.cyan),
          borderRadius: BorderRadius.circular(18),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.cyan),
          borderRadius: BorderRadius.circular(18),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.cyan),
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hint;
  final Color color;
  final IconData icon;
  final TextEditingController controller;

  const TextFieldWidget({required this.hint, required this.icon, required this.controller, this.color = Colors.cyan, super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: color,
      controller: controller,
      style: TextStyle(color: color),
      onSubmitted: (_) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: color.withAlpha((0.5 * 255).toInt())),
        prefixIcon: Icon(icon, color: color),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: color),
          borderRadius: BorderRadius.circular(18),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color),
          borderRadius: BorderRadius.circular(18),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color),
          borderRadius: BorderRadius.circular(18),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color),
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }
}

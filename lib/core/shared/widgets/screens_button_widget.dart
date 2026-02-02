import 'package:flutter/material.dart';

class ScreensButtonWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color backgroundColor;
  final Color foregroundColor;
  final void Function()? onPressed;

  const ScreensButtonWidget({required this.icon, required this.title, required this.onPressed, required this.backgroundColor, this.foregroundColor = Colors.white, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        icon: Icon(icon),
        label: Text(title),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: backgroundColor, foregroundColor: foregroundColor, padding: EdgeInsets.symmetric(vertical: 12)),
      ),
    );
  }
}

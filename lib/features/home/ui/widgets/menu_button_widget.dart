import 'package:flutter/material.dart';

class MenuButtonWidget extends StatelessWidget {
  final Color color;
  final String title;
  final IconData icon;
  final String subtitle;
  final Color textColor;
  final void Function()? onTap;

  const MenuButtonWidget({required this.icon, required this.color, required this.title, required this.onTap, required this.subtitle, required this.textColor, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(color: Colors.black.withAlpha((0.2 * 255).toInt()), blurRadius: 15, offset: Offset(0, 8))],
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: textColor.withAlpha((0.1 * 255).toInt()),
              child: Icon(icon, color: textColor),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: textColor),
                ),
                Text(subtitle, style: TextStyle(fontSize: 12, color: textColor.withAlpha((0.7 * 255).toInt()))),
              ],
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, size: 16, color: textColor),
          ],
        ),
      ),
    );
  }
}

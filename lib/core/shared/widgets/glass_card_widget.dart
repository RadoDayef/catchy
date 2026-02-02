import 'package:flutter/material.dart';

class GlassCardWidget extends StatelessWidget {
  final Color color;
  final String title;
  final Widget child;
  final Color borderColor;

  const GlassCardWidget({required this.title, required this.color, required this.borderColor, required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor, width: 2),
        boxShadow: [BoxShadow(color: Colors.black.withAlpha((0.05 * 255).toInt()), blurRadius: 10, offset: Offset(0, 5))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.cyan[900]),
          ),
          SizedBox(height: 15),
          child,
        ],
      ),
    );
  }
}

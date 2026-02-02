import 'package:flutter/material.dart';

class GlassCardWidget extends StatelessWidget {
  final Color color;
  final String title;
  final Widget child;

  const GlassCardWidget({required this.title, required this.color, required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color.withAlpha((0.1 * 255).toInt()),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withAlpha((0.8 * 255).toInt()), width: 2),
        boxShadow: [BoxShadow(color: color.withAlpha((0.05 * 255).toInt()), blurRadius: 10, offset: Offset(0, 5))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: color.withAlpha((0.8 * 255).toInt())),
          ),
          SizedBox(height: 15),
          child,
        ],
      ),
    );
  }
}

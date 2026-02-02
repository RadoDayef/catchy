import 'package:catchy/core/shared/widgets/glass_card_widget.dart';
import 'package:catchy/core/shared/widgets/screens_button_widget.dart';
import 'package:flutter/material.dart';

class ScreensOperationWidget extends StatelessWidget {
  final Color color;
  final Widget child;
  final String title;
  final IconData icon;
  final void Function()? onPressed;

  const ScreensOperationWidget({required this.icon, required this.color, required this.child, required this.title, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return GlassCardWidget(
      title: title,
      color: color,
      child: Column(
        children: [
          child,
          SizedBox(height: 16),
          ScreensButtonWidget(icon: icon, title: title, backgroundColor: color, onPressed: onPressed),
        ],
      ),
    );
  }
}

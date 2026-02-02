import 'package:flutter/material.dart';

class ScreensHeaderWidget extends StatelessWidget {
  final String title;

  const ScreensHeaderWidget(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: Navigator.of(context).pop,
          child: Icon(Icons.arrow_back_ios_new, size: 20, color: Colors.white),
        ),
        Expanded(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 2),
          ),
        ),
        SizedBox(width: 24),
      ],
    );
  }
}

import 'package:catchy/features/bingo/ui/bingo_screen.dart';
import 'package:flutter/material.dart';

class CatchyApp extends StatelessWidget {
  const CatchyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Catchy",
      /// Bingo Example Screen
      home: BingoScreen(),
      /// SharedPreferences Example Screen
      // home: SharedPreferencesScreen(),
    );
  }
}

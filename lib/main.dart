import 'package:bingo/bingo.dart';
import 'package:catchy/catchy_app.dart';
import 'package:flutter/material.dart';

/// Bingo Example Mian
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bingo.setup();
  runApp(CatchyApp());
}

/// SharedPreferences Example main
// void main() {
//   runApp(CatchyApp());
// }

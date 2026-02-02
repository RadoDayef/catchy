import 'package:bingo/bingo.dart';
import 'package:catchy/catchy_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bingo.setup();
  runApp(CatchyApp());
}

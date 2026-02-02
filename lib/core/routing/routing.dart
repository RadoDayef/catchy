import 'package:catchy/features/bingo/ui/bingo_screen.dart';
import 'package:catchy/features/home/ui/home_screen.dart';
import 'package:catchy/features/shared_preferences/ui/shared_preferences_screen.dart';
import 'package:flutter/material.dart';

import 'route_names.dart';

class Routing {
  static Map<String, Widget Function(BuildContext)> routes = {
    RouteNames.home.name: (context) => HomeScreen(),
    RouteNames.bingo.name: (context) => BingoScreen(),
    RouteNames.sharedPreferences.name: (context) => SharedPreferencesScreen(),
  };
}

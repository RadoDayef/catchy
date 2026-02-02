import 'package:catchy/core/routing/route_names.dart';
import 'package:catchy/core/routing/routing.dart';
import 'package:flutter/material.dart';

class CatchyApp extends StatelessWidget {
  const CatchyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Catchy", routes: Routing.routes, debugShowCheckedModeBanner: false, initialRoute: RouteNames.home.name);
  }
}

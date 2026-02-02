import 'package:catchy/core/routing/route_names.dart';
import 'package:catchy/features/home/ui/widgets/menu_button_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Colors.cyan[800]!, Colors.blueGrey[900]!]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.storage_rounded, size: 80, color: Colors.white70),
            SizedBox(height: 20),
            Text(
              "Persistence Lab",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 1.2),
            ),
            SizedBox(height: 10),
            Text("Choose your storage method", style: TextStyle(color: Colors.white60, fontSize: 16)),
            
            /// Separator
            SizedBox(height: 50),

            /// Button 1: Shared Preferences
            MenuButtonWidget(
              title: "Shared Preferences",
              subtitle: "The Standard Way",
              icon: Icons.settings_suggest,
              color: Colors.cyan[900]!,
              textColor: Colors.white,
              onTap: () {
                Navigator.of(context).pushNamed(RouteNames.sharedPreferences.name);
              },
            ),

            /// Separator
            SizedBox(height: 20),

            /// Button 2: Bingo Package
            MenuButtonWidget(
              title: "Bingo Package",
              subtitle: "The Reactive Wrapper",
              icon: Icons.bolt,
              color: Colors.cyan[900]!,
              textColor: Colors.white,
              onTap: () {
                Navigator.of(context).pushNamed(RouteNames.bingo.name);
              },
            ),
          ],
        ),
      ),
    );
  }
}

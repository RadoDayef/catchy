import "package:catchy/core/shared/widgets/glass_card_widget.dart";
import "package:catchy/core/shared/widgets/text_field_widget.dart";
import "package:flutter/material.dart";
import "package:shared_preferences/shared_preferences.dart";

class SharedPreferencesScreen extends StatefulWidget {
   const SharedPreferencesScreen({super.key});

  @override
  State<SharedPreferencesScreen> createState() => _SharedPreferencesScreenState();
}

class _SharedPreferencesScreenState extends State<SharedPreferencesScreen> {
  // Controllers for handling input
  final TextEditingController _saveKeyController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();
  final TextEditingController _getKeyController = TextEditingController();
  final TextEditingController _deleteKeyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title:  Text(
          "Shared Prefs",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.cyan[700],
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            // Section 1: Saving Data (Cyan Theme)
            GlassCardWidget(
              title: "Save Data",
              color: Colors.cyan[50]!,
              borderColor: Colors.cyan[300]!,
              child: Column(
                children: [
                  TextFieldWidget(hint: "Enter Key name...", icon: Icons.vpn_key, controller: _saveKeyController),
                   SizedBox(height: 12),
                  TextFieldWidget(hint: "Enter value here...", icon: Icons.edit, controller: _valueController),
                   SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan[600], foregroundColor: Colors.white, padding:  EdgeInsets.symmetric(vertical: 12)),
                      onPressed: (){
                        // TODO: Implement save data
                      },
                      icon:  Icon(Icons.save),
                      label:  Text("Save"),
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(height: 24),

            // Section 2: Retrieving Data (Cyan Theme)
            GlassCardWidget(
              title: "Retrieve Data",
              color: Colors.white,
              borderColor: Colors.cyan[100]!,
              child: Column(
                children: [
                  TextFieldWidget(hint: "Enter key to find...", icon: Icons.search, controller: _getKeyController),
                   SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        side:  BorderSide(color: Colors.cyan),
                        foregroundColor: Colors.cyan[800],
                        padding:  EdgeInsets.symmetric(vertical: 12),
                      ),
                      onPressed: (){
                        // TODO: Implement get data
                      },
                      icon:  Icon(Icons.download),
                      label:  Text("Get"),
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(height: 24),

            // Section 3: Danger Zone / Reset (Red Theme)
            GlassCardWidget(
              title: "Danger Zone",
              color: Colors.red[50]!,
              borderColor: Colors.red[200]!,
              child: Column(
                children: [
                  TextFieldWidget(hint: "Key to delete...", icon: Icons.delete_sweep, controller: _deleteKeyController),
                   SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange[700], foregroundColor: Colors.white),
                          onPressed: (){
                            // TODO: Implement delete data
                          },
                          child:  Text("Delete"),
                        ),
                      ),
                       SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.red[700], foregroundColor: Colors.white),
                          onPressed: (){
                            // TODO: Implement clear all
                          },
                          child:  Text("Clear All"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

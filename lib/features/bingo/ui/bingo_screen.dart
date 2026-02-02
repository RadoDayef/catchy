import "package:bingo/bingo.dart";
import "package:catchy/core/shared/widgets/glass_card_widget.dart";
import "package:catchy/core/shared/widgets/text_field_widget.dart";
import "package:flutter/material.dart";

class BingoScreen extends StatelessWidget {
  const BingoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Controllers for handling input
    final TextEditingController valueController = TextEditingController();
    final TextEditingController getKeyController = TextEditingController();
    final TextEditingController saveKeyController = TextEditingController();
    final TextEditingController deleteKeyController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan[700],
        title: Text(
          "Bingo",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            // Section 1: Saving Data
            GlassCardWidget(
              title: "Save Data",
              color: Colors.cyan[50]!,
              borderColor: Colors.cyan[300]!,
              child: Column(
                children: [
                  TextFieldWidget(hint: "Enter Key name...", icon: Icons.vpn_key, controller: saveKeyController),
                  SizedBox(height: 12),
                  TextFieldWidget(hint: "Enter value here...", icon: Icons.edit, controller: valueController),
                  SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan[600], foregroundColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 12)),
                      onPressed: () {
                        Bingo.mark(saveKeyController.text, valueController.text);

                        valueController.clear();
                        saveKeyController.clear();
                      },
                      icon: Icon(Icons.save),
                      label: Text("Save"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Section 2: Retrieving Data
            GlassCardWidget(
              title: "Retrieve Data",
              color: Colors.white,
              borderColor: Colors.cyan[100]!,
              child: Column(
                children: [
                  TextFieldWidget(hint: "Enter key to find...", icon: Icons.search, controller: getKeyController),
                  SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.cyan),
                        foregroundColor: Colors.cyan[800],
                        padding: EdgeInsets.symmetric(vertical: 12),
                      ),
                      onPressed: () {
                        String? value = Bingo.call(getKeyController.text);

                        getKeyController.clear();
                        print("Value Is: $value");
                      },
                      icon: Icon(Icons.download),
                      label: Text("Get"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Section 3: Delete Data
            GlassCardWidget(
              title: "Danger Zone",
              color: Colors.red[50]!,
              borderColor: Colors.red[200]!,
              child: Column(
                children: [
                  TextFieldWidget(hint: "Key to delete...", icon: Icons.delete_sweep, controller: deleteKeyController),
                  SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange[700], foregroundColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 12)),
                      onPressed: () {
                        Bingo.erase(deleteKeyController.text);

                        deleteKeyController.clear();
                      },
                      icon: Icon(Icons.delete),
                      label: Text("Delete"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Section 4: Clear Data
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red[700], foregroundColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 12)),
                onPressed: Bingo.clear,
                icon: Icon(Icons.delete_forever),
                label: Text("Clear All"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

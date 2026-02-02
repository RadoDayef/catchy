import "package:catchy/core/shared/widgets/screens_button_widget.dart";
import "package:catchy/core/shared/widgets/screens_header_widget.dart";
import "package:catchy/core/shared/widgets/screens_operation_widget.dart";
import "package:catchy/core/shared/widgets/text_field_widget.dart";
import "package:flutter/material.dart";
import "package:shared_preferences/shared_preferences.dart";

class SharedPreferencesScreen extends StatelessWidget {
  const SharedPreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController valueController = TextEditingController();
    final TextEditingController getKeyController = TextEditingController();
    final TextEditingController saveKeyController = TextEditingController();
    final TextEditingController deleteKeyController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Colors.cyan[800]!, Colors.blueGrey[900]!]),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                /// Header
                ScreensHeaderWidget("Shared Prefs"),

                /// Separator
                SizedBox(height: 12),

                /// Section 1: Add Data (The "Set String" function)
                ScreensOperationWidget(
                  title: "Set",
                  icon: Icons.save,
                  color: Colors.cyan,
                  onPressed: () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setString(saveKeyController.text, valueController.text);

                    valueController.clear();
                    saveKeyController.clear();
                    print("Saved Successfully");
                  },
                  child: Column(
                    children: [
                      TextFieldWidget(hint: "Key...", icon: Icons.tag, controller: saveKeyController),
                      SizedBox(height: 12),
                      TextFieldWidget(hint: "Value...", icon: Icons.bolt, controller: valueController),
                    ],
                  ),
                ),

                /// Separator
                SizedBox(height: 24),

                /// Section 2: Retrieving Data (The "Get String" function)
                ScreensOperationWidget(
                  title: "Get",
                  icon: Icons.data_object,
                  color: Colors.green,
                  onPressed: () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    String? value = prefs.getString(getKeyController.text);

                    getKeyController.clear();
                    print("Value Is: $value");
                  },
                  child: TextFieldWidget(hint: "Key...", icon: Icons.radar, color: Colors.green, controller: getKeyController),
                ),

                /// Separator
                SizedBox(height: 24),

                /// Section 3: Delete Data (The "Remove" function)
                ScreensOperationWidget(
                  title: "Remove",
                  icon: Icons.delete,
                  color: Colors.deepOrange,
                  onPressed: () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.remove(deleteKeyController.text);

                    deleteKeyController.clear();
                    print("Deleted Successfully");
                  },
                  child: TextFieldWidget(hint: "Key...", color: Colors.deepOrange, icon: Icons.auto_delete, controller: deleteKeyController),
                ),

                /// Separator
                SizedBox(height: 24),

                /// Section 4: Clear Data (The "Clear" function)
                ScreensButtonWidget(
                  title: "Clear",
                  icon: Icons.delete_forever,
                  onPressed: () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.clear();

                    print("Cleared Successfully");
                  },
                  backgroundColor: Colors.red,
                ),
                SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

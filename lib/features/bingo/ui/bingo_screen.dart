import "package:bingo/bingo.dart";
import "package:catchy/core/shared/widgets/screens_button_widget.dart";
import "package:catchy/core/shared/widgets/screens_header_widget.dart";
import "package:catchy/core/shared/widgets/screens_operation_widget.dart";
import "package:catchy/core/shared/widgets/text_field_widget.dart";
import "package:flutter/material.dart";

class BingoScreen extends StatelessWidget {
  const BingoScreen({super.key});

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
                ScreensHeaderWidget("Bingo"),

                /// Separator
                SizedBox(height: 12),

                /// Section 1: Add Data (The "Mark" function)
                ScreensOperationWidget(
                  title: "Mark",
                  icon: Icons.save,
                  color: Colors.cyan,
                  onPressed: () {
                    Bingo.mark(saveKeyController.text, valueController.text);

                    valueController.clear();
                    saveKeyController.clear();
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

                /// Section 2: Retrieving Data (The "Call" function)
                ScreensOperationWidget(
                  title: "Call",
                  icon: Icons.data_object,
                  color: Colors.green,
                  onPressed: () {
                    String? value = Bingo.call(getKeyController.text);

                    getKeyController.clear();
                    print("Value Is: $value");
                  },
                  child: TextFieldWidget(hint: "Key...", icon: Icons.radar, color: Colors.green, controller: getKeyController),
                ),

                /// Separator
                SizedBox(height: 24),

                /// Section 3: Delete Data (The "Erase" function)
                ScreensOperationWidget(
                  title: "Erase",
                  icon: Icons.delete,
                  color: Colors.deepOrange,
                  onPressed: () {
                    Bingo.erase(deleteKeyController.text);

                    deleteKeyController.clear();
                  },
                  child: TextFieldWidget(hint: "Key...", color: Colors.deepOrange, icon: Icons.auto_delete, controller: deleteKeyController),
                ),

                /// Separator
                SizedBox(height: 24),

                /// Section 4: Clear Data (The "Clear" function)
                ScreensButtonWidget(title: "Clear", icon: Icons.delete_forever, onPressed: Bingo.clear, backgroundColor: Colors.red),
                SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

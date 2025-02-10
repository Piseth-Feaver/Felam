import 'package:fe_lam/pages/tabs/profile/term_condition/term_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermView extends GetView<TermController> {
  const TermView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Terms and Conditions",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            SizedBox(
              height: 12,
            ),
            Text("Welcome to our application. By using our Service, you agree to the following term:"),
            Text(".You must not use our service for illegal activities."),
            Text(".We reserve the right to update these terms at any time."),
            Text("Your personal data will be stored securely."),
            Text("Violation of terms may result in account suspension.")
          ],
        ),
      ),
    );
  }
}

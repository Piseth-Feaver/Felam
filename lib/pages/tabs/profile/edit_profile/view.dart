
import 'package:fe_lam/pages/export.dart';
import 'package:fe_lam/share/widget/text_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'export.dart';

class EditProfileView extends GetView<EditProfileController> {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EditProfile"),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: AppTextForm(
              controller: controller.nameController,
              label: "Username",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your username';
                }
                if (value.length < 6) {
                  return 'Username must be at least 6 characters';
                }
                if (value.length > 20) {
                  return 'Username must be less than 20 characters';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: PasswordTextForm(
              controller: controller.passwordController,
            ),
          ),
          ElevatedButton(
            onPressed: (){
            },
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}


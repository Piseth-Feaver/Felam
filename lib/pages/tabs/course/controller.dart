import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:toastification/toastification.dart';

class CourseController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final obscureText = true.obs;

  void toggleObscureText() {
    obscureText.value = !obscureText.value;
  }

  Future<void> Course() async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    Get.context!.loaderOverlay.show();
    await Future.delayed(const Duration(seconds: 2), () {
      Get.context!.loaderOverlay.hide();
    });
    toastification.show(
      title: Text('Hello, world!'),
    );
    return;
  }
}

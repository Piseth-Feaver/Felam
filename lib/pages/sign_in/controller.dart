import 'package:fe_lam/core/export.dart';
import 'package:fe_lam/pages/export.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';


class SignInController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final obscureText = true.obs;
  final storage = Get.find<StorageService>();

  void toggleObscureText() {
    obscureText.value = !obscureText.value;
  }

  Future<void> signIn() async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    Get.context!.loaderOverlay.show();
    await Future.delayed(const Duration(seconds: 2), () {
      Get.context!.loaderOverlay.hide();
    });
    storage.setToken("token");
    Get.toNamed(PagesRoute.tabs);
  }
}

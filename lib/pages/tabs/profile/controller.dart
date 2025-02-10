import 'package:fe_lam/core/storage.dart';
import 'package:fe_lam/pages/export.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:toastification/toastification.dart';
import 'package:url_launcher/url_launcher.dart';


class ProfileController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final obscureText = true.obs;
  final storage = Get.find<StorageService>();
  void toggleObscureText() {
    obscureText.value = !obscureText.value;
  }
  void showSignOutDialog(){
    Get.dialog(
      AlertDialog(
        title: Text("Are you want to sign out?"),
        actions: [
          TextButton(
            onPressed: (){
              Get.back();
            },
            child: Text("No"),
          ),
          TextButton(
            onPressed: (){
              signOut();
            },
            child: Text("Yes"),
          ),
        ],
      ),
    );
  }

  Future<void> Profile() async {
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

  void signOut() {
    storage.removeToken();
    Get.offAllNamed(PagesRoute.signIn);

  }

  void onTerm() async {
      const url = 'https://flutter.dev';
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url));
      } else {
        throw 'Could not launch $url';
    }
  }

}



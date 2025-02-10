import 'package:fe_lam/core/export.dart';
import 'package:fe_lam/share/export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'export.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: kPadding * 2,
        ),
        child: SizedBox(
          height: Get.height,
          child: SafeArea(
            child: Form(
              key: controller.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/fe-logo.png',
                        width: 200,
                        height: 200,
                      ),
                    ],
                  ),
                  const SizedBox(height: kSpace * 2),
                  Column(
                    children: [
                      Text(
                        "Sign In",
                        style: Get.textTheme.headlineSmall,
                      ),
                      const SizedBox(height: kSpace),
                      AppTextForm(
                        controller: controller.usernameController,
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
                      PasswordTextForm(
                        controller: controller.passwordController,
                      ),
                      AppButton(
                        onPressed: controller.signIn,
                        child: Text("Sing In"),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/sca-logo.png',
                            width: 60,
                            height: 60,
                          ),
                          Image.asset(
                            'assets/images/rupp-logo.png',
                            width: 56,
                            height: 56,
                          ),
                        ],
                      ),
                      Text(
                        "Developed by: SCA",
                        style: Get.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

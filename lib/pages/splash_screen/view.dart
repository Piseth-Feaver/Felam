import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'export.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                Text(
                  "Faculty of Engineering",
                  style: Get.textTheme.displaySmall,
                ),
              ],
            ),
            CircularProgressIndicator(),
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
    );
  }
}

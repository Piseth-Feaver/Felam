import 'package:fe_lam/core/storage.dart';
import 'package:fe_lam/pages/export.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  final storage = Get.find<StorageService>();

  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 2), () {
      if (storage.isLoggedIn) {
        Get.offNamed(PagesRoute.tabs);
        return;
      }
      Get.offNamed(PagesRoute.signIn);
    });
    super.onInit();
  }
}

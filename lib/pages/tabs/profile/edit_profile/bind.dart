import 'package:get/get.dart';

import 'export.dart';

class EditProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(EditProfileController());
  }
}

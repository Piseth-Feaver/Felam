import 'package:get/get.dart';

import 'export.dart';

class CourseBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CourseController());
  }
}

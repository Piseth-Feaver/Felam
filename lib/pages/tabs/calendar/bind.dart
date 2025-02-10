import 'package:get/get.dart';

import 'export.dart';

class CalendarBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CalendarController());
  }
}

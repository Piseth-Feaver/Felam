
import 'package:get/get.dart';
import 'export.dart';

class TabsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TabsController());
  }
}

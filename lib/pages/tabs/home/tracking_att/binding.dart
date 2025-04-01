import 'package:fe_lam/pages/tabs/home/tracking_att/controller.dart';
import 'package:get/get.dart';

class TrackingBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> TrackingController());
  }

}
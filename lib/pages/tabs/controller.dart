import 'package:get/get.dart';

class TabsController extends GetxController {
  final index = 0.obs;
  void onChangeIndex(int i) {
    index.value = i;
  }
}

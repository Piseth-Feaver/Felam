import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PrivacyController extends GetxController {
  final ctlWeb = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse('https://flutter.dev'));
}

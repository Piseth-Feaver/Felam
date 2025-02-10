import 'package:fe_lam/pages/export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';

import 'export.dart';

class BaseRepository extends GetConnect {
  @protected
  final storage = Get.find<StorageService>();
  late final String _path;
  final _tokenRepository = Get.find<TokenRepository>();


  @override
  void onInit() async {
    httpClient.baseUrl = 'https://fe-lms.eventhub.one';
    httpClient.timeout = const Duration(minutes: 2);
    httpClient.addRequestModifier<dynamic>((request) {
      request.headers['Authorization'] = 'Bearer ${storage.token}';
      return request;
    });
    super.onInit();
  }

  @protected
  Future<dynamic> checkError(Response response, {dynamic data}) async {
    if (response.hasError) {
      if (response.statusCode == 401) {
        final refresh = await _tokenRepository.refreshToken();
        if (!refresh) return null;
        final req = response.request!;
        final newPath = req.url.path.replaceFirst("/$_path", "");
        final res = await request(
          newPath,
          req.method,
          body: data,
          headers: req.headers,
        );
        return checkError(res);
      }
      var message = "";
      if (response.bodyString != null) {
        if (response.bodyString!.isEmpty) {
          message = response.statusText.toString();
        } else {
          message = response.bodyString!;
        }
      } else {
        message = response.statusText.toString();
      }
      _showErrorToast(message);
      return null;
    }
    if (response.body == null) {
      return true;
    }
    return response.body;
  }

  void _showErrorToast(String message) {
    toastification.show(
      context: Get.context!,
      type: ToastificationType.error,
      alignment: Alignment.topCenter,
      style: ToastificationStyle.fillColored,
      title: const Text("Oops.."),
      description: Text(message),
      autoCloseDuration: const Duration(seconds: 4),
      showProgressBar: false,
    );
  }
}

class TokenRepository extends GetConnect {
  final storage = Get.find<StorageService>();

  Future<bool> refreshToken() async {
    final response = await post('$baseUrl/AnonymousUser/RefreshToken', {
      "accessToken": storage.token,
      "sub": "admin",
    });
    if (response.hasError) {
      if (response.statusCode == 401) {
        storage.removeToken();
        Get.offAllNamed(PagesRoute.splashScreen);
        return false;
      }
      _showErrorToast(response.bodyString ?? response.statusText.toString());
      return false;
    }
    storage.setToken(response.body);
    return true;
  }

  void _showErrorToast(String message) {
    toastification.show(
      context: Get.context!,
      type: ToastificationType.error,
      alignment: Alignment.topCenter,
      style: ToastificationStyle.flatColored,
      title: const Text("Oops.."),
      description: Text(message),
      autoCloseDuration: const Duration(seconds: 4),
      showProgressBar: false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:material_theme_builder/material_theme_builder.dart';
import 'package:toastification/toastification.dart';

import 'core/export.dart';
import 'pages/export.dart';

Future<void> main() async {
  await initService();
  runApp(const MyApp());
}

Future<void> initService() async {
  await GetStorage.init();
  Get.lazyPut(() => StorageService());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: GlobalLoaderOverlay(
        child: GetMaterialApp(
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: MaterialThemeBuilder(
              primary: kPrimaryColor,
              secondary: kSecondaryColor,
              tertiary: kTertiaryColor,
              error: kErrorColor,
              neutral: kNeutralColor,
            ).toScheme(),
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: PagesRoute.splashScreen,
          getPages: PagesRoute.routes,
          // initialBinding: PagesBinding(),
        ),
      ),
    );
  }
}


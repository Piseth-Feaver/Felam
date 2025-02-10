import 'package:fe_lam/pages/tabs/profile/language/language_binding.dart';
import 'package:fe_lam/pages/tabs/profile/language/lanugage_view.dart';
import 'package:fe_lam/pages/tabs/profile/privacy/privacy_binding.dart';
import 'package:fe_lam/pages/tabs/profile/privacy/privacy_controller.dart';
import 'package:fe_lam/pages/tabs/profile/privacy/privacy_view.dart';
import 'package:fe_lam/pages/tabs/profile/term_condition/term_binding.dart';
import 'package:fe_lam/pages/tabs/profile/term_condition/term_view.dart';
import 'package:get/get.dart';

import 'export.dart';

class PagesRoute {
  static const String splashScreen = '/splash_screen';
  static const String signIn = '/sign_in';
  static const String tabs = '/tabs';
  static const String editProfile = '/edit_profile';
  static const String languages = '/language';
  static const String privacy = "/privacy";
  static const String term = "/term";


  static final routes = <GetPage>[
    GetPage(
      name: signIn,
      page: () => const SignInView(),
      binding: SignInBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: editProfile,
      page: () => const EditProfileView(),
      binding: EditProfileBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: splashScreen,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: tabs,
      page: () => const TabsView(),
      binding: TabsBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: languages,
      page: () => const LanguageView(),
      binding: LanguageBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: privacy,
      page: () => const PrivacyView(),
      binding: PrivacyBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: term,
      page: () => const TermView(),
      binding: TermBinding(),
      transition: Transition.fadeIn,
    ),


  ];
}

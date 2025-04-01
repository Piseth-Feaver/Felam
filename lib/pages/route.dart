import 'package:fe_lam/pages/tabs/home/att_detail/att_detail_binding.dart';
import 'package:fe_lam/pages/tabs/home/att_detail/att_detail_view.dart';
import 'package:fe_lam/pages/tabs/home/attendance/attendance_binding.dart';
import 'package:fe_lam/pages/tabs/home/attendance/attendance_view.dart';
import 'package:fe_lam/pages/tabs/home/form_permission/binding.dart';
import 'package:fe_lam/pages/tabs/home/form_permission/view.dart';
import 'package:fe_lam/pages/tabs/home/home_view.dart';
import 'package:fe_lam/pages/tabs/home/permission/binding.dart';
import 'package:fe_lam/pages/tabs/home/permission/view.dart';
import 'package:fe_lam/pages/tabs/home/tracking_att/binding.dart';
import 'package:fe_lam/pages/tabs/home/tracking_att/view.dart';
import 'package:fe_lam/pages/tabs/profile/language/language_binding.dart';
import 'package:fe_lam/pages/tabs/profile/language/lanugage_view.dart';
import 'package:fe_lam/pages/tabs/profile/privacy/privacy_binding.dart';
import 'package:fe_lam/pages/tabs/home/home_binding.dart';
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
  static const String attendance = "/attendance";
  static const String detail = "/detail";
  static const String permission = "/permission";
  static const String formpermission = "/formpermission";
  static const String tracking = "/tracking";

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
      bindings: [
        CourseBinding(),
        HomeBinding(),

      ],
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
    GetPage(
      name: attendance,
      page: () => const AttendanceView(),
      binding: AttendanceBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: detail,
      page: () => const AttendanceDetailView(),
      binding: AttendanceDetailBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: permission,
      page: () => const PermissionView(),
      binding: PermissionBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: permission,
      page: () => const FormPermissionView(),
      binding: FormPermissionBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: tracking,
      page: () => const TrackingView(),
      binding: TrackingBinding(),
      transition: Transition.fadeIn,
    ),



  ];
}

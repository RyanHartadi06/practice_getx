import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:getx_7days/modules/main/screens/main_screens.dart';
import 'package:getx_7days/modules/splash_page/screens/splash_screen.dart';
import 'package:getx_7days/routes/route_names.dart';

import '../constants/theme.dart';

class AppPages {
  static final appPages = [
    GetPage(
      name: RouteNames.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RouteNames.mainScreen,
      page: () => const MainScreen(),
      curve: Curves.easeInOut,
      transition: Transition.rightToLeft,
      transitionDuration: defaultDuration,
    ),
  ];
}

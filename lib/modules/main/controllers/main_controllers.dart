import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_7days/modules/main/pages/home_screen.dart';
import 'package:getx_7days/modules/main/pages/articles_page.dart';
import 'package:getx_7days/modules/main/pages/user_page.dart';

class MainController extends GetxController {
  int menuIndex = 0;
  Widget displayPage = const HomeScreen();

  void switchPage(int index) {
    menuIndex = index;

    switch (index) {
      case 0:
        displayPage = const HomeScreen();
        break;
      case 1:
        displayPage = const ArticlesPage();
        break;
      case 2:
        displayPage = const UserPage();
        break;
      default:
        displayPage = const HomeScreen();
    }

    update();
  }
}

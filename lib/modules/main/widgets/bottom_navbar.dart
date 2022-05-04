import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/theme.dart';
import '../controllers/main_controllers.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final MainController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: mainColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () => controller.switchPage(0),
            child: SizedBox(
              width: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(controller.menuIndex == 0
                      ? 'assets/icon/bottom-home-active.svg'
                      : 'assets/icon/bottom-home.svg'),
                  const SizedBox(height: 2),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 10,
                      color: controller.menuIndex == 0
                          ? primaryColor
                          : textLightGrey,
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => controller.switchPage(1),
            child: SizedBox(
              width: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(controller.menuIndex == 1
                      ? 'assets/icon/bottom-aktifitas-active.svg'
                      : 'assets/icon/bottom-aktifitas.svg'),
                  const SizedBox(height: 2),
                  Text(
                    'Aktifitas',
                    style: TextStyle(
                      fontSize: 10,
                      color: controller.menuIndex == 1
                          ? primaryColor
                          : textLightGrey,
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => controller.switchPage(2),
            child: SizedBox(
              width: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(controller.menuIndex == 2
                      ? 'assets/icon/bottom-layanan-active.svg'
                      : 'assets/icon/bottom-layanan.svg'),
                  const SizedBox(height: 2),
                  Text(
                    'Layanan',
                    style: TextStyle(
                      fontSize: 10,
                      color: controller.menuIndex == 2
                          ? primaryColor
                          : textLightGrey,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

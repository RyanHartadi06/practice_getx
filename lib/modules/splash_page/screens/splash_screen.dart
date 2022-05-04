import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getx_7days/constants/theme.dart';
import 'package:getx_7days/routes/route_names.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimayColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 450,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/illustration/illustration.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            const Text(
              "Boost Profit",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Our tools are helping business\nto grow much faster",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () => Get.offAndToNamed(RouteNames.mainScreen),
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(65),
                  color: kSecondaryColor,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/icon/btn.svg',
                    height: 32,
                    width: 32,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

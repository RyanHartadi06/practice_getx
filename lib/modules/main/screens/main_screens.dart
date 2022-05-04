import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/theme.dart';
import '../controllers/main_controllers.dart';
import '../widgets/bottom_navbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  DateTime? _currentBackPressTime;
  final _controller = Get.put(MainController());

  Future<bool> _onWillPop() {
    DateTime now = DateTime.now();
    if (_currentBackPressTime == null ||
        now.difference(_currentBackPressTime!) > const Duration(seconds: 2)) {
      _currentBackPressTime = now;
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: WillPopScope(
        onWillPop: _onWillPop,
        child: GetBuilder<MainController>(
          builder: (_) => AnimatedSwitcher(
            duration: fastDuration,
            child: _controller.displayPage,
          ),
        ),
      ),
      bottomNavigationBar: GetBuilder<MainController>(
        builder: (_) => BottomNavbar(controller: _controller),
      ),
    );
  }
}

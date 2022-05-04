import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_7days/modules/main/controllers/home_controllers.dart';

import '../../../constants/theme.dart';
import '../widgets/home_page/articles_section.dart';
import '../widgets/home_page/categories_section.dart';
import '../widgets/home_page/popular_section.dart';
import '../widgets/home_page/section_top.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = Get.find<HomeControllers>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            _controller.getListBerita();
          },
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                SectionTop(),
                SizedBox(height: 25),
                CategoriesSection(),
                PopularCourse(),
                ArticlesSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

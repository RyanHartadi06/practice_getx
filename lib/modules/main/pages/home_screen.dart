import 'package:flutter/material.dart';

import '../../../constants/theme.dart';
import '../widgets/home_page/articles_section.dart';
import '../widgets/home_page/categories_section.dart';
import '../widgets/home_page/popular_section.dart';
import '../widgets/home_page/section_top.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              SectionTop(),
              SizedBox(height: 12),
              CategoriesSection(),
              PopularCourse(),
              ArticlesSection(),
            ],
          ),
        ),
      ),
    );
  }
}

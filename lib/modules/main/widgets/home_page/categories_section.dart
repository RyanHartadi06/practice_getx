import 'package:flutter/material.dart';

import 'categories_card.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CategoriesCard(),
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemCount: 3,
      ),
    );
  }
}

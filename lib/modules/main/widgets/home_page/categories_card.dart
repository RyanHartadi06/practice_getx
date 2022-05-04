import 'package:flutter/material.dart';

import '../../../../constants/theme.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: mainColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: bgColor,
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/image/design.png',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Design",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const Text(
              "49 Course",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

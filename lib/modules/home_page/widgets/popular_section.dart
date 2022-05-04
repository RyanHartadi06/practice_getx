import 'package:flutter/material.dart';
import 'popular_card.dart';

class PopularCourse extends StatelessWidget {
  const PopularCourse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Popular Course",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Show All",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 250,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const PopularCard(),
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            itemCount: 3,
          ),
        ),
      ],
    );
  }
}

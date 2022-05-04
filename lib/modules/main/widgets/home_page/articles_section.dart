import 'package:flutter/material.dart';

import 'articles_card.dart';

class ArticlesSection extends StatelessWidget {
  const ArticlesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              "Articles",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Show All",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => const ArticlesCard(),
          separatorBuilder: (context, index) => const SizedBox(height: 5),
          itemCount: 5,
        ),
      ],
    );
  }
}

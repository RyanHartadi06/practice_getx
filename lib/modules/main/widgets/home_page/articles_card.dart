import 'package:flutter/material.dart';

class ArticlesCard extends StatelessWidget {
  const ArticlesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(12),
            ),
            child: Image.asset(
              'assets/image/fullstack.png',
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 12,
                ),
                Text(
                  "How to: Work faster as Full Stack Designer",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "UI Design",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

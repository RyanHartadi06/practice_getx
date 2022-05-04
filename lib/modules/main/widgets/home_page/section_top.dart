import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SectionTop extends StatelessWidget {
  const SectionTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/image/user.png',
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 210,
            ),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/icon/search.svg',
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/icon/notif.svg',
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          "Want to Study Class\nwhat's Today?",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

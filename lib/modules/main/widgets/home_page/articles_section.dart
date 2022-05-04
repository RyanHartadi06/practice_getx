import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_7days/modules/main/controllers/home_controllers.dart';

import '../../../../services/response_call.dart';
import 'articles_card.dart';

class ArticlesSection extends StatefulWidget {
  const ArticlesSection({
    Key? key,
  }) : super(key: key);

  @override
  State<ArticlesSection> createState() => _ArticlesSectionState();
}

class _ArticlesSectionState extends State<ArticlesSection> {
  final _controller = Get.find<HomeControllers>();
  @override
  void initState() {
    _controller.getListBerita();
    super.initState();
  }

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
        Obx(() {
          if (_controller.apiCall.value.status == Status.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (_controller.apiCall.value.status == Status.error) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (_controller.listBerita.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final berita = _controller.listBerita[index];
              return ArticlesCard(
                berita: berita,
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 5),
            itemCount: _controller.listBerita.length,
          );
        }),
      ],
    );
  }
}

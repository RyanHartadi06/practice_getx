import 'package:flutter/material.dart';
import 'package:getx_7days/modules/main/models/berita_model.dart';
import 'package:getx_7days/services/network_service.dart';

class ArticlesCard extends StatelessWidget {
  const ArticlesCard({
    Key? key,
    required this.berita,
  }) : super(key: key);

  final Berita berita;

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
            child: Image.network(
              NetworkService.getImageUrl(berita.gambar),
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
              children: [
                const SizedBox(
                  height: 12,
                ),
                Text(
                  berita.judulBerita,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  berita.deskripsi,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
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

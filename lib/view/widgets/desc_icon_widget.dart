import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';

class IconWidget extends ConsumerWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8)),
      child: Container(
        height: 8 * 46,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.shade300,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  Icons.file_download_outlined,
                  size: 30,
                  color: Colors.black54,
                ),
                const Icon(
                  Icons.bookmark_outline,
                  size: 30,
                  color: Colors.black54,
                ),
                const Icon(
                  Icons.favorite_outline,
                  size: 30,
                  color: Colors.black54,
                ),
                const Icon(
                  Icons.square_outlined,
                  size: 30,
                  color: Colors.black,
                ),
                const Icon(
                  Icons.star_border_outlined,
                  size: 30,
                  color: Colors.black,
                ),
                GestureDetector(
                  onTap: () async {
                    await Share.share("share");
                  },
                  child: const Icon(
                    Icons.share_outlined,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

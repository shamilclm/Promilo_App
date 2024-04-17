import 'package:flutter/material.dart';

class SubmittedMediaWidget extends StatelessWidget {
  const SubmittedMediaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "assets/images/search.png",
            width: 40,
          ),
          Image.asset(
            "assets/images/linkedin.png",
            width: 40,
          ),
          Image.asset(
            "assets/images/facebook.png",
            width: 40,
          ),
          Image.asset(
            "assets/images/instagram.png",
            width: 40,
          ),
          Image.asset(
            "assets/images/whatsapp.png",
            width: 40,
          )
        ],
      ),
    );
  }
}

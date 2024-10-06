import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';

class BottomBanner extends StatelessWidget {
  const BottomBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
          image: AssetImage("assets/images/bg.png"),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 15),
          // Related News Text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Paris Olympiad 2024",
                  style: TextStyle(
                    fontSize: 18,
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Related news",
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          // Arrow Icon
          IconButton.filled(
            onPressed: () {},
            style: IconButton.styleFrom(
              backgroundColor: greyColor.withOpacity(0.5),
            ),
            icon: const Icon(
              Icons.arrow_forward_ios,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:topnews/pages/profile/widgets/profile_menu_tile.dart';

import 'widgets/categories.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 90, right: 90, top: 90, bottom: 60),
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            ProfileMenuTile(
              icon: Icons.trending_up,
              title: 'Trendings',
              onTap: () {},
            ),
            ProfileMenuTile(
              icon: Icons.star,
              title: 'Top 10 Today',
              onTap: () {},
            ),
            ProfileMenuTile(
              icon: Icons.bookmark,
              title: 'Achieved News',
              onTap: () {},
            ),
            ProfileMenuTile(
              icon: Icons.edit,
              title: 'Marked News',
              onTap: () {},
            ),
            const SizedBox(height: 40),
            const Categories(),
          ],
        ),
      ),
    );
  }
}

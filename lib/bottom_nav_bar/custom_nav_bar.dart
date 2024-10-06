import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:topnews/pages/homepage/home_page_view.dart';
import 'package:topnews/pages/notification/notifications.dart';
import 'package:topnews/pages/profile/profile.dart';

import '../core/app_colors.dart';
import '../pages/article/article.dart';

class CustomNavBar extends StatelessWidget {
  CustomNavBar({super.key});

  final NavbarController controller = Get.put(NavbarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: whiteColor,
          selectedIndex: controller.currentIndex.value,
          elevation: 5,
          height: 70,
          indicatorColor: Colors.deepOrange.shade100,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          onDestinationSelected: (int index) =>
              controller.currentIndex.value = index,
          destinations: [
            NavigationDestination(
              icon: Icon(
                Icons.home,
                color: greyColor,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.article_rounded,
                color: greyColor,
              ),
              label: 'Article',
            ),
            NavigationDestination(
              icon: Icon(
                Iconsax.notification5,
                color: greyColor,
              ),
              label: 'Statistics',
            ),
            const NavigationDestination(
              icon: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/images/person.png'),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Obx(
        () => controller.screens[controller.currentIndex.value],
      ),
    );
  }
}

class NavbarController extends GetxController {
  RxInt currentIndex = 0.obs;

  final screens = [
     const HomePageView(),
    const Article(),
    const Notifications(),
    const Profile(),
  ];
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topnews/pages/homepage/widgets/page_view_item.dart';
import '../../controllers/home_page_view_controller.dart';

class HomePageView extends StatelessWidget {
  HomePageView({super.key});

  // Using GetX to provide the controller
  final HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: controller.pagesData.length,
        onPageChanged: (index) {
          controller.updatePageIndex(index); // Update the current page index
        },
        itemBuilder: (context, index) {
          var page = controller.pagesData[index];
          return HomePageViewItem(
            imagePath: page['imagePath']!,
            title: page['title']!,
            postAt: page['postAt']!,
            description: page['description']!,
            source: page['source']!,
          );
        },
      ),
    );
  }
}

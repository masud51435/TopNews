import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topnews/pages/homepage/widgets/page_view_item.dart';
import '../../controllers/home_page_view_controller.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageController controller = Get.put(HomePageController());
    return Scaffold(
      body: PageView.builder(
        controller: controller.pageController,
        itemCount: controller.pagesData.length,
        onPageChanged: (index) {
          controller.updatePageIndex(index);
        },
        itemBuilder: (context, index) {
          var page = controller.pagesData[index];
          return AnimatedBuilder(
              animation: controller.pageController,
              builder: (context, child) {
                double value = 1.0;
                if (controller.pageController.position.haveDimensions) {
                  value = controller.pageController.page! - index;
                  value = (1 - (value.abs() * 0.2)).clamp(0.0, 1.0);
                }
                return Transform(
                  transform: Matrix4.identity()..scale(value),
                  child: Opacity(
                    opacity: value,
                    child: HomePageViewItem(
                      imagePath: page['imagePath']!,
                      title: page['title']!,
                      postAt: page['postAt']!,
                      description: page['description']!,
                      source: page['source']!,
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}

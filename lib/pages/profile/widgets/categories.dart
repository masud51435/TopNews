import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topnews/common/section_heading.dart';

import '../../../controllers/news_categories_controller.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsCategoriesController controller =
        Get.put(NewsCategoriesController());
    return Column(
      children: [
        AppSectionHeading(
          text: 'Categories',
          onTap: () {},
        ),
        SizedBox(
          height: 190,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.categories.length,
            itemBuilder: (context, index) {
              var category = controller.categories[index];

              return Obx(
                () => GestureDetector(
                  onTap: () {
                    controller.selectCategory(category['name']);
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            category['img'],
                            height: controller.selectedCategory.value ==
                                    category['name']
                                ? 130
                                : 100,
                            width: controller.selectedCategory.value ==
                                    category['name']
                                ? 130
                                : 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          category['name'],
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Obx(() {
          var items = controller.itemsForSelectedCategory;
          return ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              var item = items[index];

              return Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 05),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueAccent,
                ),
                child: Text(
                  item,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
              );
            },
          );
        }),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topnews/common/section_heading.dart';
import 'package:topnews/core/app_colors.dart';
import 'package:topnews/pages/profile/widgets/all_categories.dart';

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
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AllCategories(),
              ),
            );
          },
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
                          child: Opacity(
                            opacity: controller.selectedCategory.value ==
                                    category['name']
                                ? 1.0
                                : 0.5,
                            child: Image.asset(
                              category['img'],
                              height: controller.selectedCategory.value ==
                                      category['name']
                                  ? 110
                                  : 90,
                              width: controller.selectedCategory.value ==
                                      category['name']
                                  ? 110
                                  : 90,
                              fit: BoxFit.cover,
                            ),
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
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        color: greyColor,
                      ),
                      child: const Icon(
                        Icons.image,
                        color: Colors.white54,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        item,
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }),
      ],
    );
  }
}

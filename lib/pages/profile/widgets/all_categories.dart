import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topnews/controllers/news_categories_controller.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsCategoriesController controller =
        NewsCategoriesController.instance;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Categories'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: 150,
        ),
        padding: const EdgeInsets.all(15),
        itemCount: controller.categories.length,
        itemBuilder: (BuildContext context, int index) {
          var category = controller.categories[index];

          return Obx(
            () => GestureDetector(
              onTap: () {
                controller.selectCategory(category['name']);
              },
              child: Container(
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
                            ? 110
                            : 90,
                        width: controller.selectedCategory.value ==
                                category['name']
                            ? 110
                            : 90,
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
    );
  }
}

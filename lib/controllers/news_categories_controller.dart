import 'package:get/get.dart';

class NewsCategoriesController extends GetxController {
  static NewsCategoriesController get instance => Get.find();
  // List of categories for horizontal scrollable images
  final List categories = [
    {
      "name": "International",
      "img": "assets/images/cimg1.jpg",
    },
    {
      "name": "National",
      "img": "assets/images/cimg2.jpg",
    },
    {
      "name": "Sports",
      "img": "assets/images/cimg3.png",
    },
    {
      "name": "Politics",
      "img": "assets/images/cimg4.jpg",
    },
    {
      "name": "Finance",
      "img": "assets/images/cimg5.jpg",
    },
    {
      "name": "Entertainment",
      "img": "assets/images/cimg6.jpg",
    },
  ];

  // Each category can have its own list of items for vertical scrollable list
  var categoryItems = {
    "National": [
      "কোটা সংস্কারের দাবিতে বঙ্গভবনে স্মারকলিপি দিলেন শিক্ষার্থীরা",
      "কোটা সংস্কারের দাবিতে বঙ্গভবনে স্মারকলিপি দিলেন শিক্ষার্থীরা",
      "কোটা সংস্কারের দাবিতে বঙ্গভবনে স্মারকলিপি দিলেন শিক্ষার্থীরা",
    ],
    "Finance": [
      "এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প",
      "এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প",
      "এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প"
    ],
    "Politics": [
      "এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প",
      "এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প",
      "এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প",
    ],
    "Entertainment": [
      "এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প",
      "এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প",
      "এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প",
    ],
    "International": [
      "এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প",
      "এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প",
      "এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প",
    ],
    "Sports": [
      "এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প",
      "এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প",
      "এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প",
    ],
  }.obs;

  // Currently selected category
  var selectedCategory = "Sports".obs;

  // This will return the list of items based on selected category
  List<String> get itemsForSelectedCategory =>
      categoryItems[selectedCategory.value] ?? [];

  // Method to select a category
  void selectCategory(String category) {
    selectedCategory.value = category;
  }
}

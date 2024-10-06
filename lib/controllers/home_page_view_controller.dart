import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  static HomePageController get instance => Get.find();

  // page controller for manage the page index
  final PageController pageController = PageController();

  // List of pages data
  final pagesData = [
    {
      "imagePath": "assets/images/front1.png",
      "title":
          "Pan Zhanle’s new swimming world-record at Olympics makes no sense, and that’s the problem",
      "postAt": "Posted by Maila at July 23, 2024 9:00 PM",
      "description":
          "Pan Zhanle did the unthinkable on Wednesday in the men’s 100 meter freestyle. The 19-year-old didn’t just break the most difficult world record in swimming, but he smashed it by 0.4 seconds — and beat second place by 1.08 seconds, a full body length. What has ensued from that moment is, in a word, ugly. There have been allegations of doping from one side, claims of racism from the other, and in the middle the inescapable reality that what ensued simply doesn’t make sense.",
      "source": "Source: Prothom Alo, July 23, 2024",
    },
    {
      "imagePath": "assets/images/front2.jpg",
      "title":
          "Bangladesh protests updates: Sheikh Hasina quits, interim gov’t taking over",
      "postAt": "Posted by Maila at July 23, 2024 9:00 PM",
      "description":
          "Bangladesh’s Prime Minister Sheikh Hasina has resigned and fled the country following weeks of deadly demonstrations against her government. The removal of Hasina on Monday followed weeks of deadly protests and appears to have averted the threat of further bloodshed. The focus now moves to who will control the South Asian country.",
      "source": "Source: BBC Sports, July 22, 2024",
    },
    {
      "imagePath": "assets/images/front3.png",
      "title":
          "What to know about the 25th Amendment as Trump makes wild claim about Biden",
      "postAt": "Posted by Maila at July 23, 2024 9:00 PM",
      "description":
          "No matter what Biden says or how much his fellow Democrats try to build up his accomplishments as president, multiple Republicans have argued that the 25th Amendment to the Constitution should be used to remove Biden from office ASAP – something that’s not going to happen since no Democrat supports it. ",
      "source": "Source: Reuters, July 21, 2024",
    },
    {
      "imagePath": "assets/images/front4.png",
      "title":
          "গাজীপুর জেলা কারাগারে বিক্ষোভ-গুলি, আহত ১৬, কাশিমপুর কারাগারের সুপার প্রত্যাহার",
      "postAt": "Posted by Maila at July 23, 2024 9:00 PM",
      "description":
          '''গাজীপুরের কাশিমপুর হাইসিকিউরিটি কেন্দ্রীয় কারাগারের পর গাজীপুর জেলা কারাগারে অস্থিরতা দেখা দিয়েছে। আজ বৃহস্পতিবার সকাল থেকে সেখানে উত্তেজনা ও বিক্ষোভ শুরু করেছেন বন্দীরা। কারাগারের বাইরে থেকে গুলির শব্দ শোনা গেছে। এ ঘটনায় আহত হয়েছেন ১৬ জন।

গাজীপুর জেলা কারা হাসপাতালের চিকিৎসক মাকসুদা বলেন, কারাগারে বন্দীরা বিদ্রোহ করেছেন। এ ঘটনায় ১৬ জন আহত হয়েছেন। এঁদের মধ্যে কেউ মাথায়, কেউ চোখে, কেউবা পায়ে আঘাত পেয়েছেন। আহত সবাইকে প্রাথমিক চিকিৎসা দেওয়া হয়েছে। আহত ব্যক্তিদের মধ্যে ১৩ জন কারাবন্দী ও তিনজন কারারক্ষী আছেন।''',
      "source": "Source: Reuters, July 21, 2024",
    },
    {
      "imagePath": "assets/images/front5.png",
      "title":
          "Israel-Hamas war updates: Israel says 2,600 ‘terrorist targets’ struck; Gaza’s health services enter ‘critical stage’",
      "postAt": "Posted by Maila at July 23, 2024 9:00 PM",
      "description":
          "The Gaza Strip’s health services have entered a “critical stage,” Palestinian health authorities say. In its daily update, the Israeli Defense Forces said 2,600 “terrorist targets” inside the Gaza Strip have been struck, including the Islamic University, which Hamas militants are said to be using as a training camp.",
      "source": "Source: Reuters, July 21, 2024",
    },
  ].obs;

  // Current Page Index
  var currentPage = 0.obs;

  // Function to update current page index
  void updatePageIndex(int index) {
    currentPage.value = index;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }
}

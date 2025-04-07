import 'package:flutter/material.dart';

import 'widgets/onboarding_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  final List<OnBoardingPage> pages = [
    OnBoardingPage(
      imagePath: "assets/lottie/onBoarding1.json",
      title: "Welcome To IEEE Campus...",
      description:
          "Join the world's largest technical community right from your campus",
    ),
    OnBoardingPage(
      imagePath: "assets/lottie/onBoarding2.json",
      title: "Explore & Engage",
      description:
          "Discover IEEE events, workshops, and student activities. Stay ahead with exclusive opportunities!",
    ),
    OnBoardingPage(
      imagePath: "assets/lottie/onBoarding3.json",
      title: "Ready To Begin...?",
      description:
          "join the IEEE student community and start your journey toward knowledge and professional growth!",
    ),
  ];
  final PageController _pageController = PageController();
  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              itemCount: 3,
              controller: _pageController,
              allowImplicitScrolling: false,
              itemBuilder: (context, index) {
                return OnBoardingWidget(
                  page: pages[index],
                  currentPageIndex: index,
                  pageController: _pageController,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

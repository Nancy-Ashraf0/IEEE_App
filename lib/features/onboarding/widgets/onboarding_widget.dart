import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/text_styles.dart';

class OnBoardingPage {
  String title;
  String description;
  String imagePath;
  OnBoardingPage({
    required this.imagePath,
    required this.title,
    required this.description,
  });
}

class OnBoardingWidget extends StatelessWidget {
  OnBoardingPage page;
  int currentPageIndex;
  PageController pageController;

  OnBoardingWidget({
    required this.page,
    required this.currentPageIndex,
    required this.pageController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 50, child: Lottie.asset(page.imagePath, animate: true)),
        Expanded(
          flex: 50,
          child: Column(
            spacing: 15.h,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildTitleAndDescription(),
              _buildDots(),
              Spacer(),
              _buildSkip(context),
              _buildNextButton(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return AnimatedContainer(
          duration: Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 5),
          width: currentPageIndex == index ? 10.w : 8.w,
          height: currentPageIndex == index ? 10.h : 8.h,
          decoration: BoxDecoration(
            color:
                currentPageIndex == index ? AppColors.primary : AppColors.grey,
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }

  Widget _buildNextButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30.h, left: 20.w, right: 20.w),
      child: ElevatedButton(
        onPressed: () {
          if (currentPageIndex == 2) {
            // Navigator.pushReplacementNamed(context, Tester.routeName);
          }
          if (currentPageIndex < 2) {
            currentPageIndex++;
          }

          pageController.jumpToPage(currentPageIndex);
        },
        style: ElevatedButton.styleFrom(
          minimumSize: Size(1.sw, 60.h),
          backgroundColor: Color(0xff006699),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Text("Next", style: TextStyles.fontSemi16White),
      ),
    );
  }

  Widget _buildSkip(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.pushReplacementNamed(context, Tester.routeName);
      },
      child: Text(
        "Skip",
        textAlign: TextAlign.center,
        style: TextStyles.fontRegular16Gray,
      ),
    );
  }

  Widget _buildTitleAndDescription() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 18.w),
      child: Column(
        children: [
          Text(
            page.title,
            style: TextStyles.fontBold34Black,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.h),
          Text(
            page.description,
            style: TextStyles.fontRegular16Gray,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

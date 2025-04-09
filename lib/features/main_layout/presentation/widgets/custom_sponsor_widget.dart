import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';

class CustomSponsorWidget extends StatelessWidget {
  const CustomSponsorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12.r),
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.primary, width: 1.5.w),
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withAlpha(55),
            blurRadius: 10.r,
            spreadRadius: 2.r,
            offset: Offset(0.w, 5.h),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [_SponsorTitle(), SizedBox(height: 16.h), _SponsorGrid()],
      ),
    );
  }
}

class _SponsorTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Meet Our Sponsors',
      style: TextStyle(
        fontFamily: 'GideonRoman',
        fontSize: 30.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.primary,
        letterSpacing: 1.5.w,
      ),
    );
  }
}

class _SponsorGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 12.w,
      runSpacing: 12.h,
      children: List.generate(5, (index) => SponsorCard(index: index)),
    );
  }
}

class SponsorCard extends StatelessWidget {
  final int index;

  const SponsorCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('Sponsor ${index + 1} clicked');
      },
      child: SizedBox(
        width: 100.w,
        height: 80.h,
        child: Image.asset(
          'assets/images/sponsor${index + 1}.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

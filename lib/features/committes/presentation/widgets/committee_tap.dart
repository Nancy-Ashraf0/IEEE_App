import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/text_styles.dart';

class CommitteeTab extends StatelessWidget {
  final String iconPath;
  final String label;

  const CommitteeTab({super.key, required this.iconPath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(iconPath, height: 30.h, color: AppColors.primary),
          SizedBox(width: 8.w),
          Text(
            label,
            style: TextStyles.fontRegular16Gray.copyWith(letterSpacing: 0.5.sp),
          ),
        ],
      ),
    );
  }
}

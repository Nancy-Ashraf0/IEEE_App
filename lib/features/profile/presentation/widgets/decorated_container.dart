import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';

class DecoratedContainer extends StatelessWidget {
  final double height;
  final Widget child;
  const DecoratedContainer({
    super.key,
    required this.height,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      child: Container(
        height: height.h,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: child,
      ),
    );
  }
}

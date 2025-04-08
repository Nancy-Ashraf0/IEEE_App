import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

abstract class TextStyles {
  static TextStyle fontBold34Black = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 34.sp,
    color: AppColors.black,
  );
  static TextStyle fontBold26White = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 26.sp,
    color: AppColors.white,
  );
  static TextStyle fontBold18Black = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.sp,
    color: AppColors.black,
  );
  static TextStyle fontRegular16Gray = TextStyle(
    fontSize: 16.sp,
    color: AppColors.grey,
  );
  static TextStyle fontMedium14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );
  static TextStyle fontSemi16White = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    color: AppColors.white,
  );
  static TextStyle fontSemi20Black = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
    color: AppColors.black,
  );
  static TextStyle fontSemi16Black = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    color: AppColors.black,
  );

  static TextStyle fontBold24Black = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24.sp,
    color: AppColors.black,
  );

  static TextStyle fontBold20Primary = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.sp,
    color: AppColors.primary,
  );
  static TextStyle fontRegular14White = TextStyle(
    fontSize: 14.sp,
    color: AppColors.white,
  );
}

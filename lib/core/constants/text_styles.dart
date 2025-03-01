import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

abstract class TextStyles{
  static TextStyle fontBold34Black=TextStyle(fontWeight: FontWeight.bold,fontSize: 34.sp, color: AppColors.black);
  static TextStyle fontRegular16Gray=TextStyle(fontSize: 16.sp, color: AppColors.grey);
  static TextStyle fontSemi16White=TextStyle(fontWeight:FontWeight.w600,fontSize: 16.sp, color: AppColors.white);

}
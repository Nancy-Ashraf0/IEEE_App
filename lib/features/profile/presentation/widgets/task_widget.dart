import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/text_styles.dart';
import 'decorated_container.dart';


class TaskWidget extends StatelessWidget {
  DateTime dueTime;
  String taskName;
  bool isCompleted;

  TaskWidget({
    super.key,
    required this.isCompleted,
    required this.taskName,
    required this.dueTime,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.h),
        child: DecoratedContainer(
          height: 88.h,
          child: Column(
            spacing: 8.h,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      taskName,
                      style: TextStyles.fontRegular16Gray.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    Container(
                      height: 28.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                        color:
                            isCompleted
                                ? AppColors.completed
                                : AppColors.lightBlue,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Center(
                        child:
                            isCompleted
                                ? Text(
                                  "Completed",
                                  style: TextStyles.fontRegular14White,
                                )
                                : Text(
                                  "InProgress",
                                  style: TextStyles.fontRegular14White.copyWith(
                                    color: AppColors.darkBlue,
                                  ),
                                ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    Text(
                      "Due to: ${dueTime.day}/${dueTime.month}/${dueTime.year}",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

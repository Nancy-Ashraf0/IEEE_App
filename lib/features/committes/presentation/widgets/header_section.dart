import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constants/app_vectors.dart';
import '../../data/models/commitee_data.dart';

import '../../../../core/constants/text_styles.dart';
import '../../data/models/committee.dart';

class HeaderSection extends StatelessWidget {
  final List<CommitteeModel> committeeList;
  final int index;
  final bool isExpanded;
  const HeaderSection({
    super.key,
    required this.index,
    required this.isExpanded,
    required this.committeeList,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                committeeList[index].name,
                style: TextStyles.fontBold18Black,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 4.h),
              Text(
                "${technicalCommittees[index].membersCount.toString()} Members",
                style: TextStyles.fontMedium14.copyWith(fontSize: 16.sp),
              ),
            ],
          ),
        ),
        SizedBox(width: 16.w),
        AnimatedContainer(
          height: isExpanded ? 120.h : 80.h,
          width: isExpanded ? 120.h : 80.h,
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.r)),
          child: SvgPicture.asset(AppVectors.flutter, fit: BoxFit.cover),
        ),
      ],
    );
  }
}

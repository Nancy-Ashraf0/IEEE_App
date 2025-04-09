import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/text_styles.dart';
import '../../data/models/committee.dart';

class ExpandedContent extends StatelessWidget {
  final List<CommitteeModel> committeeList;
  final int index;
  const ExpandedContent({
    super.key,
    required this.committeeList,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textAlign: TextAlign.justify,
            committeeList[index].description,
            style: TextStyles.fontRegular16Gray,
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}

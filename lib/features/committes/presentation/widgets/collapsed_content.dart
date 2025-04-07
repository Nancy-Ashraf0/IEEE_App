import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/text_styles.dart';
import '../../data/models/committee.dart';

class CollapsedContent extends StatelessWidget {
  final List<Committee> committeeList;
  final int index;

  const CollapsedContent({
    super.key,
    required this.index,
    required this.committeeList,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: Text(
        committeeList[index].description,
        textAlign: TextAlign.justify,
        style: TextStyles.fontRegular16Gray,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

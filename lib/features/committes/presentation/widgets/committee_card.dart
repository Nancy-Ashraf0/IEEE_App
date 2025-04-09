import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/committees_constants.dart';
import '../../../../core/helpers/extentions.dart';
import '../../../../core/routing/routes.dart';
import '../../data/models/commitee_data.dart';
import '../../data/models/committee.dart';
import 'action_button.dart';
import 'collapsed_content.dart';
import 'expanded_content.dart';
import 'header_section.dart';

class CommitteeCard extends StatelessWidget {
  final int index;
  final List<CommitteeModel> committeeList;
  final bool isExpanded;
  final VoidCallback onTap;

  const CommitteeCard({
    super.key,

    required this.isExpanded,
    required this.index,
    required this.onTap,
    required this.committeeList,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: CommitteesConstants.animationDuration,
      curve: Curves.easeInOut,
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.r,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: InkWell(
        enableFeedback: false,
        borderRadius: BorderRadius.circular(8.r),
        onTap: () {
          Scrollable.ensureVisible(
            context,
            duration: CommitteesConstants.animationDuration,
            curve: Curves.easeInOut,
          );
          onTap();
        },
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(
                committeeList: committeeList,
                index: index,
                isExpanded: isExpanded,
              ),
              AnimatedCrossFade(
                duration: CommitteesConstants.animationDuration,
                crossFadeState:
                    isExpanded
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst,
                firstChild: CollapsedContent(
                  committeeList: committeeList,
                  index: index,
                ),
                secondChild: Column(
                  children: [
                    ExpandedContent(committeeList: committeeList, index: index),
                    ActionButton(
                      onTap: () {
                        context.pushNamed(
                          Routes.committeeDetailsScreen,
                          arguments: {
                            "isTechnical":
                                committeeList == technicalCommittees
                                    ? true
                                    : false,
                            "index": index,
                          },
                        );
                      },
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

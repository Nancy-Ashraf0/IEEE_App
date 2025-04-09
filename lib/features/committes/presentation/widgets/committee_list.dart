import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/committee.dart';
import 'committee_card.dart';

class CommitteeList extends StatelessWidget {
  final int tabIndex;
  final List<CommitteeModel> committeeList;
  final List<bool> expandedStates;
  final Function(int, int) onItemTapped;

  const CommitteeList({
    super.key,
    required this.expandedStates,
    required this.onItemTapped,
    required this.committeeList,
    required this.tabIndex,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 8.h),
      itemCount: expandedStates.length,
      itemBuilder:
          (context, index) => CommitteeCard(
            committeeList: committeeList,
            index: index,
            key: ValueKey('$tabIndex-$index'),
            isExpanded: expandedStates[index],
            onTap: () => onItemTapped(tabIndex, index),
          ),
    );
  }
}

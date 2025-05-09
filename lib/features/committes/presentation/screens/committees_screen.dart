import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_vectors.dart';
import '../../../../core/helpers/extentions.dart';
import '../../data/models/commitee_data.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../widgets/committee_list.dart';
import '../widgets/committee_tap.dart';

class CommitteesScreen extends StatefulWidget {
  const CommitteesScreen({super.key});

  @override
  State<CommitteesScreen> createState() => _CommitteesScreenState();
}

class _CommitteesScreenState extends State<CommitteesScreen> {
  final List<List<bool>> _expandedStates = [
    List.generate(technicalCommittees.length, (i) => false),
    List.generate(nonTechnicalCommittees.length, (i) => false),
  ];

  void _toggleExpansion(int tabIndex, int cardIndex) {
    setState(() {
      // Toggle current card
      _expandedStates[tabIndex][cardIndex] =
          !_expandedStates[tabIndex][cardIndex];

      // Collapse other cards in the same tab
      for (int i = 0; i < _expandedStates[tabIndex].length; i++) {
        if (i != cardIndex) {
          _expandedStates[tabIndex][i] = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  TabBarView _buildBody() {
    return TabBarView(
      children: [
        CommitteeList(
          tabIndex: 0,
          committeeList: technicalCommittees,
          expandedStates: _expandedStates[0],
          onItemTapped: _toggleExpansion,
        ),
        CommitteeList(
          tabIndex: 1,
          committeeList: nonTechnicalCommittees,
          expandedStates: _expandedStates[1],
          onItemTapped: _toggleExpansion,
        ),
      ],
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: SvgPicture.asset(AppVectors.arrowBack),
        onPressed: () => context.pop(), // This is a custom extension method
      ),
      title: Text(
        'Committees',
        style: TextStyles.fontSemi20Black.copyWith(letterSpacing: 1.sp),
      ),
      centerTitle: true,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(48.h),
        child: TabBar(
          enableFeedback: false,
          indicatorColor: AppColors.primary,
          indicatorSize: TabBarIndicatorSize.label,
          dividerHeight: 0.0,
          tabs: const [
            CommitteeTab(iconPath: AppImages.technical, label: 'Technical'),
            CommitteeTab(
              iconPath: AppImages.nonTechnical,
              label: 'Non-Technical',
            ),
          ],
        ),
      ),
    );
  }
}

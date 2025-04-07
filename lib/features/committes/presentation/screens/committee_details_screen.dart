import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/committees_constants.dart';
import '../../../../core/constants/text_styles.dart';
class CommitteeDetailsScreen extends StatelessWidget {
  const CommitteeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: [
            _buildPhotoAndTitle(),
            _buildDescription(),
            _buildBoardMembers(),
            _buildGetInTouchSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildPhotoAndTitle() {
    return Container(
      alignment: Alignment.bottomLeft,
      height: 200.h,
      width: 390.w,
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/web_development.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Text(
        "Technical Committee",
        textAlign: TextAlign.justify,
        style: TextStyles.fontBold26White.copyWith(color: AppColors.white),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: true,
      centerTitle: true,
      title: Text('Technical Committee', style: TextStyles.fontSemi20Black),
    );
  }

  Widget _buildDescription() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 356.w,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: AppColors.primary, width: 5),
            right: BorderSide(color: AppColors.grey.withAlpha(20), width: 2),
            left: BorderSide(color: AppColors.grey.withAlpha(20), width: 2),
            bottom: BorderSide(color: AppColors.grey.withAlpha(20), width: 2),
          ),
        ),
        padding: EdgeInsets.all(20.r),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("About Committee", style: TextStyles.fontBold18Black),
            Text(
              CommitteesConstants.technicalCommittees[0].description,
              style: TextStyles.fontRegular16Gray,
            ),
            _buildActiveMembers(),
          ],
        ),
      ),
    );
  }

  Widget _buildActiveMembers() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
      decoration: BoxDecoration(
        color: AppColors.primary.withAlpha(40),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 72.h,
      width: 170.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 10,
            children: <Widget>[
              Icon(Icons.people_alt, color: AppColors.primary),
              TweenAnimationBuilder<int>(
                tween: IntTween(begin: 0, end: 24),
                duration: Duration(seconds: 3),
                curve: Easing.standardDecelerate,// Adjust speed
                builder: (context, value, child) {
                  return Text(
                    "$value",
                    style: TextStyles.fontSemi20Black.copyWith(
                      color: AppColors.primary,
                    ),
                  );
                },
              ),
            ],
          ),
          Text("Active Members", style: TextStyles.fontRegular16Gray),
        ],
      ),
    );
  }

  Widget _buildBoardMembers() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        spacing: 15,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Board Members", style: TextStyles.fontBold18Black),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 15,
              children: <Widget>[
                _boardCard(
                  position: "Tech Head",
                  name: "Mohamed Mostafa",
                  imagePath: "assets/images/avatar.jpg",
                ),
                _boardCard(
                  position: "Tech Head",
                  name: "Mohamed Mostafa",
                  imagePath: "assets/images/avatar.jpg",
                ),
                _boardCard(
                  position: "Tech Head",
                  name: "Mohamed Mostafa",
                  imagePath: "assets/images/avatar.jpg",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _boardCard({
    required String position,
    required String name,
    required String imagePath,
  }) {
    return Column(
      spacing: 8,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: AppColors.primary,
          child: CircleAvatar(
            radius: 36,
            backgroundImage: AssetImage(imagePath),
          ),
        ),
        Text(name, style: TextStyles.fontSemi16Black),
        Text(position, style: TextStyles.fontRegular16Gray),
      ],
    );
  }

  Widget _buildGetInTouchSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Get In Touch", style: TextStyles.fontBold18Black),
          const SizedBox(height: 10),
          _buildIconWithTitle(
            title: "Shoubra Faculty of Engineering",
            icon: Icons.location_on,
            onPressed: () {},
          ),
          _buildIconWithTitle(
            title: "ieeebusbofficial@gmail.com",
            icon: Icons.email,
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              spacing: 20,
              children: <Widget>[
                _buildSocialInfoItem(onPressed: () {}, icon: Icons.email),
                _buildSocialInfoItem(onPressed: () {}, icon: Icons.facebook),
                _buildSocialInfoItem(onPressed: () {}, icon: Icons.facebook),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _buildIconWithTitle({
    required Function onPressed,
    required String title,
    required IconData icon,
  }) {
    return Row(
      children: <Widget>[
        IconButton(
          onPressed: onPressed(),
          icon: Icon(icon, color: AppColors.primary),
        ),
        Text(title, style: TextStyles.fontRegular16Gray),
      ],
    );
  }

  Widget _buildSocialInfoItem({
    required IconData icon,
    required Function onPressed,
  }) {
    return CircleAvatar(
      backgroundColor: AppColors.grey.withAlpha(20),
      child: IconButton(
        onPressed: onPressed(),
        icon: Icon(icon, color: AppColors.primary),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../widgets/decorated_container.dart';
import '../widgets/task_widget.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = "profile";
  DateTime dueTime = DateTime.now();
  @override
  ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    List<TaskWidget> tasks = [
      TaskWidget(dueTime: dueTime, taskName: 'Task1', isCompleted: true),
      TaskWidget(dueTime: dueTime, taskName: 'Task2', isCompleted: false),
      TaskWidget(dueTime: dueTime, taskName: 'Task3', isCompleted: true),
      TaskWidget(dueTime: dueTime, taskName: 'Task4', isCompleted: false),
    ];
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      appBar: _buildAppBar(),
      body: Column(
        spacing: 24,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildProfileMainInfo(
            imagePath: "assets/download.jpg",
            rating: 5,
            committee: "Flutter",
            name: "Uzumaki Naruto",
          ),
          DecoratedContainer(
            height: 100,
            child: Column(
              spacing: 16.h,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAccountMails(
                  icon: Icons.mail,
                  accountAddress: "naruto@example.com",
                  onTap: () {},
                ),
                _buildAccountMails(
                  icon: Icons.facebook_rounded,
                  accountAddress: "naruto@example.com",
                  onTap: () {},
                ),
              ],
            ),
          ),
          DecoratedContainer(
            height: 80,
            child: _buildCompletedAndInProgress(completed: 12, inProgress: 10),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Text("Tasks & Solution", style: TextStyles.fontBold18Black),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return tasks[index];
              },
              itemCount: tasks.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCompletedAndInProgress({
    required int completed,
    required int inProgress,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            SizedBox(height: 10.h),
            Text("$completed", style: TextStyles.fontBold20Primary),
            Text("Completed", style: TextStyles.fontRegular16Gray),
          ],
        ),
        Column(
          children: [
            SizedBox(height: 10.h),
            Text(
              "$inProgress",
              style: TextStyles.fontBold20Primary.copyWith(
                color: AppColors.black,
              ),
            ),
            Text("In Progress", style: TextStyles.fontRegular16Gray),
          ],
        ),
      ],
    );
  }

  Widget _buildDecoratedContainer({
    required double height,
    required Widget child,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      child: Container(
        height: height.h,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: child,
      ),
    );
  }

  Widget _buildAccountMails({
    required IconData icon,
    required String accountAddress,
    required Function onTap,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: 24.0.w),
      child: InkWell(
        onTap: onTap(),
        child: Row(
          spacing: 12.w,
          children: [
            Icon(icon, color: AppColors.primary),
            Text(
              accountAddress,
              style: TextStyles.fontRegular16Gray.copyWith(
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildProfileMainInfo({
    required String name,
    required String committee,
    required double rating,
    required String imagePath,
  }) {
    return Container(
      height: 240.h,
      decoration: BoxDecoration(color: AppColors.white),
      child: Column(
        spacing: 8.h,
        children: [
          _buildProfilePic(imagePath: imagePath),
          Text(name, style: TextStyles.fontBold24Black),
          Text(
            committee,
            style: TextStyles.fontRegular16Gray.copyWith(
              color: AppColors.slateGrey,
            ),
          ),
          _buildStars(rating: rating),
        ],
      ),
    );
  }

  Widget _buildProfilePic({required String imagePath}) {
    return Padding(
      padding: EdgeInsets.only(top: 24.h),
      child: CircleAvatar(radius: 40.r, backgroundImage: AssetImage(imagePath)),
    );
  }

  Widget _buildStars({required double rating}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        double starValue = index + 1;
        if (rating >= starValue) {
          return Icon(Icons.star, color: AppColors.gold);
        } else if (rating >= starValue - .9) {
          return Icon(Icons.star_half, color: AppColors.gold);
        } else {
          return Icon(Icons.star_border, color: AppColors.gold);
        }
      }),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.white,
      centerTitle: true,
      title: Text("Profile", style: TextStyles.fontBold18Black),
      actions: [Icon(Icons.edit, color: AppColors.primary)],
      leading: Icon(Icons.arrow_back_ios, color: AppColors.primary),
      actionsPadding: EdgeInsets.symmetric(horizontal: 20.w),
    );
  }
}

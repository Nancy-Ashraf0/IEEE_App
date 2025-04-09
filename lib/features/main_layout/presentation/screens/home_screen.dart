import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ieee_application0/core/constants/app_colors.dart';
import 'package:ieee_application0/core/helpers/extentions.dart';

import '../../../../core/constants/text_styles.dart';
import '../../../../core/routing/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _drawerbody(context),
      drawerEnableOpenDragGesture: true,
      body: Column(children: [Container()]),
      // TODO: Custom AppBar here
      appBar: AppBar(
        backgroundColor: AppColors.white,
        // TODO: Logo here
        title: Text(
          'Welcome to IEEE',
          style: TextStyles.fontSemi20Black.copyWith(letterSpacing: 1.sp),
        ),
        centerTitle: true,
      ),
    );
  }

  Widget _drawerbody(BuildContext context) {
    return Drawer(
      width: 0.75.sw,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: AppColors.primary),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30.r,
                  child: SvgPicture.asset('assets/svgs/user.svg', height: 40.h),
                ),
                SizedBox(height: 12.h),
                Text(
                  'USER NAME',
                  style: TextStyles.fontSemi20Black.copyWith(
                    letterSpacing: 1.sp,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              context.pushNamedAndRemoveUntil(
                Routes.homeScreen,
                predicate: (route) => true,
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Committees'),
            onTap: () {
              context.pushNamed(Routes.committeesScreen);
            },
          ),
          ListTile(
            leading: const Icon(Icons.event),
            title: const Text('Events'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About Us'),
            onTap: () {
              context.pushNamed(Routes.aboutUsScreen);
            },
          ),
        ],
      ),
    );
  }
}

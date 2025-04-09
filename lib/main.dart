import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/constants/app_colors.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(MyApp(appRouter: AppRouter()));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  // can be seperated to a new file
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 851),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.white,
          drawerTheme: const DrawerThemeData(backgroundColor: AppColors.white),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 0,
          ),
        ),
        debugShowCheckedModeBanner: false,
        title: 'IEEE App',
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.homeScreen,
      ),
    );
  }
}

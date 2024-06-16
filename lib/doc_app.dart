import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/core/routing/app_router.dart';
import 'package:flutter_advanced_project/core/routing/routes.dart';
import 'package:flutter_advanced_project/core/theme/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doc App',
        theme: ThemeData(
          useMaterial3: true,
          primaryColor: ColorsManager.mainBlue,
        ),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}

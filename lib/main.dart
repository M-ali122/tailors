
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tailors/res/route.dart';
import 'package:tailors/res/theme/darkTheme.dart';
import 'package:tailors/res/theme/ligtTheme.dart';
import 'package:tailors/splash/view/splashScreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'App',
          theme: LightTheme.lightTheme,
          darkTheme: DarkTheme.darkTheme,
          // darkTheme: ThemeData.dark(),
          //
          // theme: DarkTheme.darkTheme,
          routes: AppRoute().routes,
          initialRoute: SplashView.route,
          // initialRoute: AdminHome.route,
        );
      },
    );
  }
}

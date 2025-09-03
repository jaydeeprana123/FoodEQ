import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_eq/Screens/login_screen_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_eq/Screens/splash_screen_view.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Styles/my_colors.dart';


void main() {

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // or yellowCard if needed
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: yellowBg, // 👈 Bottom bar color
      systemNavigationBarIconBrightness: Brightness.dark, // Dark icons
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,

        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            // supportedLocales: localizationDelegate.supportedLocales,
            // locale: localizationDelegate.currentLocale,
            title: 'FoodEQ',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),

            home: SplashScreen(),

            // home: const LatestHomepageTest(),

            // home: MyHomePage(title: "Mine Astro",),
            //  home: const ListScreen(),

            //  home: const HealthPackageDetailPage(),
          );
        });
  }
}



import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_eq/Screens/food_snap1_view.dart';
import 'package:food_eq/Screens/health_trade_screen_view.dart';
import 'package:food_eq/Screens/plan_meal_screen_view.dart';
import 'package:food_eq/Screens/preference_screen_view.dart';
import 'package:food_eq/Screens/user_info_screen_view.dart';
import 'package:food_eq/Styles/constant.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_eq/Styles/my_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Styles/app_text_style.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

import 'connect_screen_view.dart';
import 'daily_goals_screen_view.dart';
import 'dashboard_screen_view.dart';
import 'fitness_dashboard_view.dart';
import 'meal_analysis_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    DashboardView(), // 2nd tab opens your FitnessDashboard
    MealAnalysisView(),
    DailyGoalsScreen(), // 2nd tab opens your FitnessDashboard
    HealthTrendsScreen(),
    PlanMealScreenView(),
    ConnectScreenView()
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      body: _pages[_selectedIndex], // 👈 load page based on tab
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xFF5f583c), // your lighterYellowBg
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            selectedItemColor: yellowBg,
            unselectedItemColor: Colors.white,
            selectedFontSize: 9,
            unselectedFontSize: 9,
            selectedLabelStyle: const TextStyle(
              fontSize: 9,
              fontFamily: fontInterSemiBold,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 9,
              fontFamily: fontInterRegular,
            ),
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  UI_dashboard,
                  width: 22,
                  height: 22,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  UI_dashboard,
                  width: 22,
                  height: 22,
                  colorFilter: ColorFilter.mode(
                    yellowBg,
                    BlendMode.srcIn,
                  ),
                ),
                label: "Dashboard",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  UI_snap,
                  width: 22,
                  height: 22,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  UI_snap,
                  width: 22,
                  height: 22,
                  colorFilter: ColorFilter.mode(
                    yellowBg,
                    BlendMode.srcIn,
                  ),
                ),
                label: "Food Snap",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  UI_goal,
                  width: 22,
                  height: 22,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  UI_goal,
                  width: 22,
                  height: 22,
                  colorFilter: ColorFilter.mode(
                    yellowBg,
                    BlendMode.srcIn,
                  ),
                ),
                label: "Daily Goals",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  UI_track,
                  width: 22,
                  height: 22,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  UI_track,
                  width: 22,
                  height: 22,
                  colorFilter: ColorFilter.mode(
                    yellowBg,
                    BlendMode.srcIn,
                  ),
                ),
                label: "Tracker",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  UI_log_meal,
                  width: 22,
                  height: 22,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  UI_log_meal,
                  width: 22,
                  height: 22,
                  colorFilter: ColorFilter.mode(
                    yellowBg,
                    BlendMode.srcIn,
                  ),
                ),
                label: "Plan a Meal",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  UI_connect,
                  width: 22,
                  height: 22,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  UI_connect,
                  width: 22,
                  height: 22,
                  colorFilter: ColorFilter.mode(
                    yellowBg,
                    BlendMode.srcIn,
                  ),
                ),
                label: "Connect",
              ),
            ],
          ),
        )

    );
  }
}

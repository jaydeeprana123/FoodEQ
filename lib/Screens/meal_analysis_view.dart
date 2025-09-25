import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_eq/Screens/preference_screen_view.dart';
import 'package:food_eq/Screens/user_info_screen_view.dart';
import 'package:food_eq/Styles/constant.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:food_eq/Styles/my_icons.dart';

import '../Styles/app_text_style.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_eq/Styles/my_colors.dart';
import 'package:food_eq/Styles/my_font.dart';
import 'package:food_eq/Styles/constant.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MealAnalysisView extends StatelessWidget {
  const MealAnalysisView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Header
              Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const Icon(Icons.arrow_back_ios, color: Colors.black54, size: 18),
                    const SizedBox(width: 8),
                    const Text(
                      "MONDAY, MAY 12",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: fontInterSemiBold,
                        color: Colors.black54,
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.person_outline, color: Colors.black87),
                    const SizedBox(width: 12),
                    const Icon(Icons.star_border, color: Colors.black87),
                    const SizedBox(width: 12),
                    const Icon(Icons.filter_list, color: Colors.black87),
                  ],
                ),
              ),

              /// Title
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "Hi Tim, here’s the complete analysis",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: fontInterSemiBold,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              /// Meal Image
              ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  singapore, // replace with your image
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 16),

              /// Macronutrients
              // _sectionCard(
              //   title: "MACRONUTRIENTS",
              //   child: Column(
              //     children: const [
              //       _nutrientBar("Protein", 25, 80),
              //       _nutrientBar("Carbs", 60, 250),
              //       _nutrientBar("Fats", 18, 70),
              //       _nutrientBar("Fiber", 5, 30),
              //     ],
              //   ),
              // ),


              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                color: greenColorLightestBg,
                child: Column(
                  children: [
                    _sectionNutriCard(
                      title: "MACRONUTRIENTS",
                      child: Column(
                        children: [
                          // Row(
                          //   children: [
                          //     Expanded(child: _mealImagePlaceholder(bread)),
                          //     const SizedBox(width: 8),
                          //     Expanded(child: _mealImagePlaceholder(noodles)),
                          //     const SizedBox(width: 8),
                          //     Expanded(child: _mealImagePlaceholder(momos)),
                          //   ],
                          // ),

                          const _NutrientProgress("Protein", 65, 80),
                          const _NutrientProgress("Carbs", 210, 250),
                          const _NutrientProgress("Fats", 55, 70),
                          const _NutrientProgress("Fiber", 18, 30),
                        ],
                      ),
                    ),




                    /// Key Nutrients
                    _sectionCard(
                      title: "KEY NUTRIENTS",
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          _nutrientRow("Iron", "4.2 mg", "Phosphorus", "245 mg"),
                          SizedBox(height: 6),
                          _nutrientRow("B12", "8.4 µg", "Omega-3", "680 mg"),
                        ],
                      ),
                    ),


                    SizedBox(height: 16,),
                    /// Wellness Impact
                    _sectionCard(
                      title: "WELLNESS IMPACT",
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          _impactBox(Icons.sentiment_satisfied, "Mood Boost", "+6.8"),
                          _impactBox(Icons.bolt, "Energy Level", "+7.2"),
                          _impactBox(Icons.bedtime, "Sleep Quality", "+4.1"),
                        ],
                      ),
                    ),

                    const SizedBox(height: 12),

                    /// Insights
                    Card(
                      color: Colors.yellow.shade100,
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Icon(Icons.insights, color: Colors.black87, size: 16),
                            SizedBox(width: 8),
                            Text(
                              "INSIGHTS",
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: fontInterSemiBold,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      /// Bottom Navigation
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.white,
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: const [
      //         _bottomNavItem(Icons.camera_alt, "Food Snap", active: true),
      //         _bottomNavItem(Icons.flag, "Daily Goals"),
      //         _bottomNavItem(Icons.track_changes, "Tracker"),
      //         _bottomNavItem(Icons.restaurant_menu, "Plan a Meal"),
      //         _bottomNavItem(Icons.share, "Connect"),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  Widget _sectionNutriCard({required String title, required Widget child}) {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 12, bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: fontInterSemiBold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 12),
            child,
          ],
        ),
      ),
    );
  }

  static Widget _mealImagePlaceholder(String image) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 96,
        color: Colors.white,
        child:  Center(
          child: Image.asset(image, fit: BoxFit.fitWidth,),
        ),
      ),
    );
  }

  /// Section Card
  static Widget _sectionCard({required String title, required Widget child}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: const TextStyle(
              fontSize: 16,
              fontFamily: fontInterSemiBold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
  }
}

/// Nutrient Bar
class _nutrientBar extends StatelessWidget {
  final String label;
  final int value;
  final int goal;

  const _nutrientBar(this.label, this.value, this.goal);

  @override
  Widget build(BuildContext context) {
    final progress = goal > 0 ? (value / goal).clamp(0.0, 1.0) : 0.0;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$label  $value g/$goal g",
            style: const TextStyle(
              fontSize: 13,
              fontFamily: fontInterSemiBold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.grey.shade300,
            color: Colors.green,
            minHeight: 8,
            borderRadius: BorderRadius.circular(8),
          ),
        ],
      ),
    );
  }
}

/// Nutrient Row
class _nutrientRow extends StatelessWidget {
  final String leftLabel;
  final String leftValue;
  final String rightLabel;
  final String rightValue;

  const _nutrientRow(this.leftLabel, this.leftValue, this.rightLabel, this.rightValue);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            "$leftLabel  $leftValue",
            style: const TextStyle(
              fontSize: 13,
              fontFamily: fontInterMedium,
              color: Color(0xCC000000),
            ),
          ),
        ),
        Expanded(
          child: Text(
            "$rightLabel  $rightValue",
            style: const TextStyle(
              fontSize: 13,
              fontFamily: fontInterMedium,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}

/// Wellness Impact Box
class _impactBox extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _impactBox(this.icon, this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Colors.yellow.shade100,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              Icon(icon, size: 22, color: Colors.black87),
              const SizedBox(height: 8),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 11,
                  fontFamily: fontInterMedium,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: fontInterSemiBold,
                  color: greenColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}

/// Bottom Nav Item
class _bottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool active;

  const _bottomNavItem(this.icon, this.label, {this.active = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: active ? Colors.yellow.shade800 : Colors.black54),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 11,
            fontFamily: fontInterSemiBold,
            color: active ? Colors.yellow.shade800 : Colors.black54,
          ),
        ),
      ],
    );
  }


}

class _NutrientProgress extends StatelessWidget {
  final String label;
  final int value;
  final int goal;

  const _NutrientProgress(this.label, this.value, this.goal, {super.key});

  @override
  Widget build(BuildContext context) {
    final progress = goal > 0 ? (value / goal).clamp(0.0, 1.0) : 0.0;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 13,
                fontFamily: fontInterMedium,
                color: Color(0xCC000000),
              ),
            ),
          ),
          Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8), // 👈 Rounded corners
                child: LinearProgressIndicator(
                  value: progress,
                  minHeight: 8,
                  color: greenColor,
                  backgroundColor: Colors.grey.shade200,
                ),
              )
          ),
          const SizedBox(width: 8),
          Text(
            "$value/$goal g",
            style: const TextStyle(
              fontSize: 12,
              fontFamily: fontInterMedium,
              color: Color(0xCC000000),
            ),
          ),
        ],
      ),
    );
  }
}




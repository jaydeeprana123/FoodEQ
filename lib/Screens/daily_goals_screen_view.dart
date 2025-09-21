import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_eq/Screens/create_Account_screen_view.dart';
import 'package:food_eq/Screens/home_page_screen_view.dart';
import 'package:food_eq/Screens/preference_screen_view.dart';
import 'package:food_eq/Screens/splash_screen_view.dart';
import 'package:food_eq/Styles/constant.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:food_eq/Styles/my_icons.dart';

import '../Styles/app_text_style.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'fitness_dashboard_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Make sure you have these constants defined somewhere in your project
// Example:
// const textColor = Colors.black;
// const greenColor = Colors.green;
// const lightYellowBg = Color(0xFFFFF9E6);
// const fontInterRegular = "Inter-Regular";
// const fontInterMedium = "Inter-Medium";
// const fontInterBold = "Inter-Bold";

class DailyGoalsScreen extends StatelessWidget {
  const DailyGoalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: lightYellowBg,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      backgroundColor: lightYellowBg,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              color: lightYellowBg,
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Icon(Icons.arrow_back_ios, color: Colors.black45, size: 18),
                  const SizedBox(width: 10),
                  const Text(
                    "MONDAY, MAY 12",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: fontInterMedium,
                      color: Colors.black54,
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.person_outline, color: Colors.black),
                  const SizedBox(width: 10),
                  const Icon(Icons.star_border, color: Colors.black),
                  const SizedBox(width: 10),
                  const Icon(Icons.filter_list, color: Colors.black),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all( 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // DAILY GOALS
                      _sectionCard(
                        title: "DAILY GOALS",
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 48,
                                  height: 48,
                                  child: CircularProgressIndicator(
                                    value: 0.75,
                                    strokeWidth: 8,
                                    color: greenColor,
                                    backgroundColor: Colors.grey.shade300,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                  
                                      Text(
                                        "Nutrients",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: fontInterSemiBold,
                                          color: textColor,
                                        ),
                                      ),

                                      SizedBox(height: 6,),
                                  
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Wrap(
                                              spacing: 12,
                                              runSpacing: 8,
                                              children: const [
                                                _NutrientItem("Carb", "58% (250g)", greenColor),
                                                _NutrientItem("Protein", "19% (80g)", Colors.lightGreen),
                                                                                  ],
                                            ),
                                          ),
                                          const SizedBox(width: 16),
                                  
                                          Expanded(
                                            child: Wrap(
                                              spacing: 12,
                                              runSpacing: 8,
                                              children: const [
                                                _NutrientItem("Fat", "16% (70g)", Colors.teal),
                                                _NutrientItem("Fiber", "7% (30g)", Colors.greenAccent),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                _GoalItem(Icons.local_fire_department, "Calories", "2,000 kcal", Colors.red),
                                _GoalItem(Icons.local_drink, "Hydration", "8 cups", Colors.blue),
                                _GoalItem(Icons.directions_walk_rounded, "Exercise", "6,000 steps", greenColor),
                                _GoalItem(Icons.bedtime, "Sleep", "7 hours", Colors.purple),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      // PROGRESS TODAY
                    _progressCard(
                      title: "PROGRESS TODAY",
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "You are on track! Great protein intake today! Consider adding more fiber-rich vegetables to your next meal for better digestion.",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black87,
                              fontFamily: fontInterRegular,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // 🔥 Proper big circular progress
                                SizedBox(width: 8,),
                                SizedBox(
                                  width: 80,
                                  height: 80,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                  Transform.scale(
                                    scale: 2.5,
                                        child: CircularProgressIndicator(
                                          value: 0.81,
                                          strokeWidth: 2, // ✅ thicker ring instead of scaling
                                          color: Colors.brown,
                                          backgroundColor: Colors.grey.shade200,
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            "1,610",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: fontInterMedium,
                                              color: Colors.black87,
                                            ),
                                          ),
                                          Text(
                                            "of 2,000 kcal",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontFamily: fontInterRegular,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 20),
                                // ✅ Stack rows vertically (not in a Row)
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      _progressRow("Calories", 0.81),
                                      _progressRow("Nutrition", 0.65),
                                      _progressRow("Exercise", 0.82),
                                      _progressRow("Hydration", 0.76),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),



                    const SizedBox(height: 16),

                      // NUTRIENTS TODAY
                      _sectionNutriCard(
                        title: "NUTRIENTS TODAY",
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(child: _mealImagePlaceholder(bread)),
                                const SizedBox(width: 8),
                                Expanded(child: _mealImagePlaceholder(noodles)),
                                const SizedBox(width: 8),
                                Expanded(child: _mealImagePlaceholder(momos)),
                              ],
                            ),
                            const SizedBox(height: 12),
                            const _NutrientProgress("Protein", 65, 80),
                            const _NutrientProgress("Carbs", 210, 250),
                            const _NutrientProgress("Fats", 55, 70),
                            const _NutrientProgress("Fiber", 18, 30),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Section wrapper
  static Widget _sectionCard({required String title, required Widget child}) {
    return Card(
      color: yellowCard,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 12, bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: fontInterSemiBold,
                      color: Colors.black87,
                    ),
                  ),


                ),


                Container(
                  height: 27,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // TODO: Add your edit action here
                    },
                    icon: const Icon(Icons.edit, size: 16, color: Colors.white),
                    label: const Text(
                      "EDIT GOALS",
                      style: TextStyle(
                        fontSize: 9,
                        fontFamily: fontInterMedium,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87, // Button background
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // 👈 pill shape
                      ),
                      elevation: 0, // flat look
                    ),
                  ),
                ),
              ],
            ),


            const SizedBox(height: 12),
            child,
          ],
        ),
      ),
    );
  }
  static Widget _sectionNutriCard({required String title, required Widget child}) {
    return Card(
      color: greenColorLightBg,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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


  static Widget _progressCard({required String title, required Widget child}) {
    return Card(
      color: lighterYellowBg,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
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

  // progress row
  static Widget _progressRow(String label, double value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          SizedBox(
            width: 70,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                fontFamily: fontInterRegular, // ✅ better weight for label
                color: Colors.black87,
              ),
            ),
          ),
          Expanded(
            child: LinearProgressIndicator(
              value: value,
              minHeight: 8,
              color: greenColor,
              backgroundColor: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(6), // ✅ smooth rounded bar
            ),
          ),
          const SizedBox(width: 8),
          Text(
            "${(value * 100).toInt()}%",
            style: const TextStyle(
              fontSize: 11,
              fontFamily: fontInterRegular,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }


  // simple placeholder for meal images
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
}

/// Small reusable widgets

class _NutrientItem extends StatelessWidget {
  final String name;
  final String value;
  final Color color;

  const _NutrientItem(this.name, this.value, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 11,
          height: 11,
          decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(3)),
        ),
        const SizedBox(width: 8),
        Text(
          "$name  $value",
          style: const TextStyle(
            fontSize: 11,
            fontFamily: fontInterRegular,
            color: textColor,
          ),
        ),
      ],
    );
  }
}

class _GoalItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color color; // 👈 New parameter
  const _GoalItem(this.icon, this.title, this.value, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 6),
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontFamily: fontInterMedium,
            color: textColor,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 11,
            fontFamily: fontInterRegular,
            color: Colors.black54,
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
                fontSize: 14,
                fontFamily: fontInterMedium,
                color: textColor,
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
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}






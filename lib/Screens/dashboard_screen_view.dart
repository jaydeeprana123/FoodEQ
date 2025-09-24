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

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

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
                        fontSize: 16,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: const Text(
                  "Welcome back, Timothy",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: fontInterSemiBold,
                    color: Colors.black,
                  ),
                ),
              ),
          
              const SizedBox(height: 12),
          
              /// Progress Card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Card(
                  color: lighterYellowBg,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Header Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "TODAY’S PROGRESS",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: fontInterSemiBold,
                                color: Colors.black,
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
          
                        /// Progress circle + goals
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            _progressCircle(1464, 2106),
                            const SizedBox(width: 16),
          
                            /// Goals Grid
                            Expanded(
                              child: GridView.count(
                                crossAxisCount: 2,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                crossAxisSpacing: 6,
                                mainAxisSpacing: 6,
                                children: [
                                  _goalBox(Icons.snowshoeing_sharp, "6,326", "steps", greenColor),
                                  _goalBox(Icons.water_drop, "3/8", "glasses", Colors.red),
                                  _goalBox(Icons.sentiment_satisfied, "Feeling", "okay", Colors.blue),
                                  _goalBox(Icons.restaurant, "3/5", "meals", Colors.black54),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          
              const SizedBox(height: 12),
          
              /// Insights
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Card(
                  color: Color(0xab5C4B2E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
          
                        Row(
                          children: [
                            Icon(Icons.insights, color: Colors.white,size: 16,),
          
                            SizedBox(width: 4,),
          
                            Text(
                              "INSIGHTS",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: fontInterSemiBold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
          
                         SizedBox(height: 8,),
          
                         Text(
                          "Great protein intake today! Consider adding more fiber-rich vegetables to your next meal for better digestion.",
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: fontInterRegular,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Wrap(
                          spacing: 8,
                          children: [
                            _chip("Add spinach"),
                            _chip("Drink more water"),
                            _chip("Try quinoa"),
                            _chip("Exercise more"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

          
              /// Meals Section
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: _sectionNutriCard(
                  title: "Today’s Meals",
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: _mealImagePlaceholder(bread)),
                          const SizedBox(width: 8),
                          Expanded(child: _mealImagePlaceholder(momos)),
                          const SizedBox(width: 8),
                          Expanded(child: _mealImagePlaceholder(noodles)),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const _NutrientProgress("Protein", 140, 180),
                      const _NutrientProgress("Carbs", 123, 250),
                      const _NutrientProgress("Fats", 108, 170),
                      const _NutrientProgress("Fiber", 138, 330),
                    ],
                  ),
                ),
              ),
          
            ],
          ),
        ),
      ),
    );
  }

  /// Progress Circle Widget
  static Widget _progressCircle(int value, int total) {
    double percent = value / total;
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 120,
          height: 120,
          child: CircularProgressIndicator(
            value: percent,
            color: greenColor,
            strokeWidth: 8,
            backgroundColor: Colors.black54,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            
            Icon(Icons.apple,  color: Colors.black, size: 32,),
            
            Text(
              "$value",
              style: const TextStyle(
                fontSize: 18,
                fontFamily: fontInterSemiBold,
                color: Colors.black,
              ),
            ),
            Text(
              "of $total kcal",
              style: const TextStyle(
                fontSize: 11,
                fontFamily: fontInterRegular,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Progress Item
  static Widget _progressItem(IconData icon, String value, String label, Color color) {
    return Row(
      children: [
        Icon(icon, color: color, size: 20),
        const SizedBox(width: 8),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontFamily: fontInterSemiBold,
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontFamily: fontInterRegular,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }

  /// Chip
  static Widget _chip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: yellowCard,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 10,
          fontFamily: fontInterSemiBold,
          color: Colors.black87,
        ),
      ),
    );
  }

  /// Meal Card
  static Widget _mealCard(String img) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          img,
          height: 90,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  /// Nutrient Bar
  static Widget _nutrientBar(String label, int value, int max, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$label  $value g",
            style: const TextStyle(
              fontSize: 13,
              fontFamily: fontInterSemiBold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          LinearProgressIndicator(
            value: value / max,
            backgroundColor: Colors.grey.shade300,
            color: color,
            minHeight: 8,
            borderRadius: BorderRadius.circular(8),
          ),
        ],
      ),
    );
  }

  /// Bottom Nav Item
  static Widget _bottomNavItem(IconData icon, String label, {bool active = false}) {
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

  /// Goal Box widget
  static Widget _goalBox(IconData icon, String value, String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: color, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 24),
           SizedBox(height: 6),
          Text(
            value,
            style:  TextStyle(
              fontSize: 14,
              fontFamily: fontInterSemiBold,
              color: color,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontFamily: fontInterRegular,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  static Widget _sectionNutriCard({required String title, required Widget child}) {
    return Card(
      color: greenColorLightBg,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 12, bottom: 12, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    title.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 15,
                      fontFamily: fontInterSemiBold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Container(
                  height: 25,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // TODO: Add your edit action here
                    },
                    icon: const Icon(Icons.add_circle, size: 16, color: Colors.white),
                    label: const Text(
                      "ADD MEAL",
                      style: TextStyle(
                        fontSize: 9,
                        fontFamily: fontInterMedium,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade600, // Button background
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
                  color: label == "Fiber"?Colors.pink:greenColor,

                  backgroundColor: Colors.black54,
                ),
              )
          ),
          const SizedBox(width: 8),
          Text(
            "$value g",
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



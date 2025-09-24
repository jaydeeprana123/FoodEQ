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

class FoodSnap3View extends StatelessWidget {
  const FoodSnap3View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [

            Image.asset(chinese, width: double.infinity, height: double.infinity,fit: BoxFit.cover,),
            Positioned(
              top: 16,
              left: 16,
              child: CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.1),
                child: const Icon(Icons.close, color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Center(
                      child: Text(
                        "EQ",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    "Food Snap",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: fontInterBold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: halfTransparent, width: 1),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // Dish Image

                            const SizedBox(height: 12),

                            // Meal Identified
                            Row(
                              children: [
                                Text(
                                  "Meal Identified:",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.transparent,
                                    fontFamily: fontInterRegular,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  "Seafood Pasta",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.transparent,
                                    fontFamily: fontInterBold,
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 8),

                            // Description
                            Container(
                              padding: REdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.white, width: 1),
                              ),
                              child: Text(
                                "Spaghetti with mussels, calamari, shrimp, garlic, tomato cream sauce, herbs, and olive oil.",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontFamily: fontInterRegular,
                                ),
                              ),
                            ),

                            const SizedBox(height: 16),

                            // Nutritional Info
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildNutritionTileDummy("Calories", "550 kcal"),
                                _buildNutritionTileDummy("Protein", "25 g"),
                                _buildNutritionTileDummy("Carb", "60 g"),
                                _buildNutritionTileDummy("Fat", "18 g"),
                              ],
                            ),

                            const SizedBox(height: 16),

                            // Portion
                            Text(
                              "Estimated Portion:",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.transparent,
                                fontFamily: fontInterMedium,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "Medium serving",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.transparent,
                                fontFamily: fontInterRegular,
                              ),
                            ),

                            const SizedBox(height: 16),

                            // Ingredients
                            Text(
                              "Ingredients:",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.transparent,
                                fontFamily: fontInterMedium,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "Pasta, Mussel, Calamari, Shrimp, Olive Oil, Tomato, Herbs, Garlic, Red Wine",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.transparent,
                                fontFamily: fontInterRegular,
                              ),
                            ),


                          ],
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: halfTransparent, width: 1),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // Dish Image

                            const SizedBox(height: 12),

                            // Meal Identified
                            Row(
                              children: [
                                Text(
                                  "Meal Identified:",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: fontInterRegular,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  "Seafood Pasta",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: greenColor,
                                    fontFamily: fontInterBold,
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 8),

                            // Description
                            Container(
                              padding: REdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.white, width: 1),
                              ),
                              child: Text(
                                "Spaghetti with mussels, calamari, shrimp, garlic, tomato cream sauce, herbs, and olive oil.",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontFamily: fontInterRegular,
                                ),
                              ),
                            ),

                            const SizedBox(height: 16),

                            // Nutritional Info
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildNutritionTile("Calories", "550 kcal"),
                                _buildNutritionTile("Protein", "25 g"),
                                _buildNutritionTile("Carb", "60 g"),
                                _buildNutritionTile("Fat", "18 g"),
                              ],
                            ),

                            const SizedBox(height: 16),

                            // Portion
                            Text(
                              "Estimated Portion:",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontFamily: fontInterRegular
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "Medium serving",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontFamily: fontInterRegular,
                              ),
                            ),

                            const SizedBox(height: 16),

                            // Ingredients
                            Text(
                              "Ingredients:",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontFamily: fontInterRegular,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "Pasta, Mussel, Calamari, Shrimp, Olive Oil, Tomato, Herbs, Garlic, Red Wine",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontFamily: fontInterRegular,
                              ),
                            ),

                            // const SizedBox(height: 16),
                            //
                            // // Continue Button
                            // SizedBox(
                            //   width: double.infinity,
                            //   child: ElevatedButton(
                            //     onPressed: () {
                            //       // TODO: Navigate or perform action
                            //     },
                            //     style: ElevatedButton.styleFrom(
                            //       backgroundColor: Colors.white.withOpacity(0.4),
                            //       padding: const EdgeInsets.symmetric(vertical: 0),
                            //       shape: RoundedRectangleBorder(
                            //         borderRadius: BorderRadius.circular(20),
                            //       ),
                            //     ),
                            //     child: Text(
                            //       'CONTINUE',
                            //       style: TextStyle(
                            //         fontSize: 16,
                            //         color: Colors.white,
                            //         fontFamily: fontInterMedium,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // Continue Button
                  Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            // TODO: Navigate or perform action
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:  Colors.black.withOpacity(0.7),
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            'CONTINUE',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: fontInterMedium,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            // TODO: Navigate or perform action
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:  Colors.white.withOpacity(0.3),
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            'CONTINUE',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: fontInterMedium,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),



          ],
        ),
      ),
    );
  }

  Widget _buildNutritionTile(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 11,
            fontFamily: fontInterRegular,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            fontFamily: fontInterSemiBold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildNutritionTileDummy(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 11,
            fontFamily: fontInterMedium,
            color: Colors.transparent,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            fontFamily: fontInterSemiBold,
            color: Colors.transparent,
          ),
        ),
      ],
    );
  }
}





import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_eq/Screens/create_Account_screen_view.dart';
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

class FinalSetupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Container(
            color: lightYellowBg, // Replace with your actual background

          ),

          // Dark overlay


          // Main content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  const Center(child: const Text("One last thing", style: TextStyle(fontSize: 20,  color: textColor,  fontFamily: fontInterMedium))),

                  Spacer(),

                  // Smartwatch Image
                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          oneLastLogo, // Replace with your wearable image
                          width: 150,
                        ),

                      ],
                    ),
                  ),

                  Spacer(),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(CreateAccountScreen());

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: yellowBg,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)), // 👈 No curves
                        ),
                      ),

                      child: const Text(
                        "Sync to smart wearables",
                        style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: fontInterRegular),

                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Take a Tour Button
                  SizedBox(
                    width: double.infinity,
                    child: InkWell(
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.black, width: 0.5),
                        ),
                        child: const Text(
                          "Take a tour",
                          style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: fontInterSemiBold),

                        ),
                      ),
                    ),
                  ),

                  Spacer(),

                  // Done Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(FitnessDashboard());

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: greenColor,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)), // 👈 No curves
                        ),
                      ),

                      child: const Text(
                        "DONE",
                        style:  TextStyle(color: Colors.white, fontSize: 16, fontFamily: fontInterBold),

                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_eq/Screens/preference_screen_view.dart';
import 'package:food_eq/Screens/user_info_screen_view.dart';
import 'package:food_eq/Styles/constant.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_eq/Styles/my_icons.dart';

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

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:food_eq/Styles/my_colors.dart';
import 'package:food_eq/Styles/my_font.dart';
import 'package:food_eq/Styles/constant.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';

class ConnectScreenView extends StatelessWidget {
  const ConnectScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      backgroundColor: yellowCard,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Header
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(UI_back, color: Colors.black54, width: 16,),
                  const SizedBox(width: 8),
                  const Text(
                    "MONDAY, MAY 12",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: fontInterSemiBold,
                      color: Colors.black54,
                    ),
                  ),

                  SizedBox(width: 6,),

                  SvgPicture.asset(UI_calendar, color: Colors.black54,width: 14,),

                  const Spacer(),
                  SvgPicture.asset(UI_profile, color: Colors.black, width: 20,),
                  const SizedBox(width: 8),
                  SvgPicture.asset(UI_ai_insight, color: Colors.black, width: 20,),
                  const SizedBox(width: 8),
                  SvgPicture.asset(UI_configure, color: Colors.black, width: 20,),
                ],
              ),
            ),

            /// Title
            Container(
              color: Colors.yellow.shade200, // background
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title Row
                  Row(
                    children: const [
                      Icon(Icons.hub, color: Colors.black87, size: 20),
                      SizedBox(width: 8),
                      Text(
                        "CONNECT",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Badge Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _badgeTop(UI_game, active: true, color: greenColor),
                      _badgeTop(UI_recipe, active: false),
                      _badgeTop(UI_learn, active: false),
                      _badgeTop(UI_family, active: false),
                      _badgeTop(UI_expert, active: false),
                    ],
                  ),
                ],
              ),),

            /// Body scroll
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Challenges in progress
                      const Text(
                        "Challenges in progress",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: fontInterSemiBold,
                            color: Colors.black54
                        ),
                      ),
                      const SizedBox(height: 10),

                      Row(
                        children: [
                          Expanded(
                            child: _challengeCard(
                              title: "Hydration Hero",
                              percent: 80,
                              time: "5 hrs remaining",
                              color: Colors.blue,
                              icon: UI_hydration,
                              colorCode: greenColor
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _challengeCard(
                              title: "Movement Goal",
                              percent: 60,
                              time: "5 hrs remaining",
                              color: Colors.pink,
                              icon: UI_exercise,
                                colorCode: Colors.pink
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      _challengeCard(
                        title: "Variety Plate boost",
                        percent: 50,
                        time: "3 days remaining",
                        color: Colors.deepPurple,
                        icon: UI_meal,
                          colorCode: Colors.deepPurple
                      ),
                      const SizedBox(height: 20),

                      /// Badges
                      const Text(
                        "Badges collected",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: fontInterSemiBold,
                          color: Colors.black54
                        ),
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          _badge("FOOD SNAP", Color(0xFF5f583c), UI_badge),
                          _badge("SLEEP PRIORITY", Colors.purple,
                              UI_badge),
                          _badge("7-DAYS STREAK", Colors.blue,
                              UI_badge),
                        ],
                      ),
                      const SizedBox(height: 20),

                      /// New challenges
                      const Text(
                        "New challenges",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: fontInterSemiBold,
                            color: Colors.black54
                        ),
                      ),


                      _newChallenge(
                        title:
                        "Mindful Moment - Spend 5 minutes meditating, journaling, or practicing deep breathing.",
                        time: "5 DAYS",
                        btnText: "START NOW",
                      ),
                      _newChallenge(
                        title:
                        "Step Up Challenge - Add +1,000 extra steps above your current average each day for 10 days.",
                        time: "10 DAYS",
                        btnText: "BEGIN CHALLENGE",
                      ),
                      _newChallenge(
                        title:
                        "Home Chef Dare - Cook at least one homemade meal per day and log it with a Food Snap.",
                        time: "7 DAYS",
                        btnText: "START CHALLENGE",
                      ),
                      _newChallenge(
                        title:
                        "Mood Quiz - 7 short questions to increase self-awareness about mental health with rating scale (1–5).",
                        time: "30 MINS",
                        btnText: "TAKE QUIZ",
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

  /// Challenge card
  static Widget _challengeCard({
    required String title,
    required int percent,
    required String time,
    required Color color,
    required String icon,
    required Color colorCode,
  }) {
    return Card(
      color: yellowBg,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            /// Progress Circle with Icon in center
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 48,
                  height: 48,
                  child: CircularProgressIndicator(
                    value: percent / 100,
                    color: color,
                    backgroundColor: Colors.grey.shade200,
                    strokeWidth: 6,
                  ),
                ),
                SvgPicture.asset(icon, color: color, width: 32),
              ],
            ),
            const SizedBox(height: 8),

            Column(
              children: [
                Text(
                  "$percent%",
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: fontInterSemiBold,
                    color: Colors.black,
                  ),
                ),

                Text(
                  "complete",
                  style: const TextStyle(
                    fontSize: 13,
                    fontFamily: fontInterMedium,
                    color: Colors.black,
                  ),
                ),
                Text(
                  time,
                  style:  TextStyle(
                    fontSize: 11,
                    fontFamily: fontInterRegular,
                    color: colorCode,
                  ),
                ),
                const SizedBox(height: 4),

                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: fontInterSemiBold,
                    color: colorCode,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  /// Badge widget
  static Widget _badge(String text, Color color, String icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color, width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            icon,
            width: 14,
            color: Colors.white,
          ),
          const SizedBox(width: 6),
          Text(
            text,
            style: const TextStyle(
              fontSize: 11,
              fontFamily: fontInterSemiBold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }



  /// New Challenge
  static Widget _newChallenge({
    required String title,
    required String time,
    required String btnText,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontFamily: fontInterRegular,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.yellow.shade300,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  time,
                  style: const TextStyle(
                    fontSize: 11,
                    fontFamily: fontInterSemiBold,
                    color: Colors.black,
                  ),
                ),
              ),
              const Spacer(),
              customButton(btnText, onTap: () {
                print("Button tapped!");
              }),
            ],
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            width: double.infinity,
            height: 1.5,
            color: line_color,
          )
        ],
      ),
    );
  }


  static Widget customButton(String btnText, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 3),
        decoration: BoxDecoration(
          color: greenColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          btnText,
          style: const TextStyle(
            fontSize: 12,
            fontFamily: fontInterSemiBold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }


  static Widget _badgeTop(String icon, {bool active = false, Color color = Colors.grey}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
      decoration: BoxDecoration(
        color: active ? color : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SvgPicture.asset(
        icon,
        width: 24,
        color: active ? Colors.white : Colors.brown.shade400,
      ),
    );
  }


}



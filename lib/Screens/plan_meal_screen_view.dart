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

class PlanMealScreenView extends StatelessWidget {
  const PlanMealScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: lightYellowBg,
        systemNavigationBarIconBrightness: Brightness.dark,
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
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Icon(Icons.arrow_back, color: Colors.black),
                  const SizedBox(width: 10),
                  const Text(
                    "MONDAY, MAY 12",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: fontInterSemiBold,
                      color: textColor,
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

            /// Tabs
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: lighterYellowBg,
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _tabItem("Order Food", Icons.restaurant, true),
                    _tabItem("Scan Label", Icons.qr_code_scanner, false),
                    _tabItem("Pantry", Icons.kitchen, false),
                    _tabItem("Log Meals", Icons.fastfood, false),
                  ],
                ),
              ),
            ),


            /// Search bar
            Container(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      child: TextField(
                        style: const TextStyle(
                          fontFamily: fontInterRegular,
                          fontSize: 12,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          hintText: "Search restaurants or dishes...",
                          hintStyle: const TextStyle(
                            fontSize: 12,
                            fontFamily: fontInterRegular,
                            color: Colors.black54,
                          ),
                          prefixIcon: const Icon(Icons.search, color: Colors.black54),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding:
                          const EdgeInsets.symmetric(horizontal: 12),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(color: Colors.black, width: 0.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(color: Colors.black, width: 0.8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black26,
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    icon: const Icon(Icons.assistant_navigation, color: Colors.white),
                    label: const Text(
                      "Near me",
                      style: TextStyle(
                        fontFamily: fontInterSemiBold,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// Restaurant list
            Expanded(
              child: ListView(
                children: [
                  _restaurantCard(
                    name: "Green Garden Bistro",
                    distance: "0.3 km",
                    time: "25-30 min",
                    healthy: "82% Healthy",
                    healthyColor: Colors.blue,
                    menu: [
                      _menuItem("Quinoa Power Bowl", 450, 35, 42, 18, 15),
                      _menuItem("Salmon & Sweet Potato", 520, 42, 35, 22, 22),
                      _menuItem("Veggie Buddha Bowl", 380, 16, 58, 12, 16),
                      _menuItem("Cauliflower Steak with Thai Salad", 350, 18, 58, 10, 19),
                    ],
                  ),
                  _restaurantYellowCard(
                    name: "Mediterranean Delight",
                    distance: "1.2 km",
                    time: "20-25 min",
                    healthy: "90% Healthy",
                    healthyColor: Colors.green,
                  ),
                  _restaurantYellowCard(
                    name: "Mika Japanese Cuisine",
                    distance: "0.8 km",
                    time: "30-35 min",
                    healthy: "78% Healthy",
                    healthyColor: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tabItem(String title, IconData icon, bool isActive) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: isActive ? greenColor : Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isActive ? greenColor : Colors.black54,
          width: 0.6,
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 16,
            color: isActive ? Colors.white : Colors.black,
          ),
          const SizedBox(width: 6),
          Text(
            title,
            style: TextStyle(
              fontSize: 11,
              fontFamily: fontInterRegular,
              color: isActive ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }



  Widget _restaurantCard({
    required String name,
    required String distance,
    required String time,
    required String healthy,
    required Color healthyColor,
    List<Widget>? menu,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: lightYellowBg,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Restaurant Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [



                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: fontInterSemiBold,
                    color: Colors.black,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: healthyColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    healthy,
                    style: TextStyle(
                      color: healthyColor,
                      fontSize: 12,
                      fontFamily: fontInterRegular,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Row(
              children: [

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: List.generate(
                          4,
                              (index) => const Icon(Icons.star, color: Colors.green, size: 16),
                        ),
                      ),

                      SizedBox(height: 4,),
                  
                      InkWell(
                        onTap: () {
                          // Handle menu view
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.green, width: 0.8),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                                "view menu",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.green,
                                ),
                              ),
                              SizedBox(width: 1),
                              Icon(Icons.arrow_drop_down, color: Colors.green, size: 20),
                            ],
                          ),
                        )),
                  
                    ],
                  ),
                ),


                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.location_on, size: 14, color: Colors.black54),
                      const SizedBox(width: 2),
                      Text(distance,
                          style: const TextStyle(
                            fontSize: 12,
                            fontFamily: fontInterRegular,
                            color: Colors.black87,
                          )),
                    ],
                  ),
                ),

                const SizedBox(width: 10),
                Text(time,
                    style: const TextStyle(
                      fontSize: 12,
                      fontFamily: fontInterRegular,
                      color: Colors.black87,
                    )),
              ],
            ),
            const SizedBox(height: 10),

            /// Menu items
            if (menu != null) ...menu,
          ],
        ),
      ),
    );
  }


  Widget _restaurantYellowCard({
    required String name,
    required String distance,
    required String time,
    required String healthy,
    required Color healthyColor,
    List<Widget>? menu,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: yellowBg,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Restaurant Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [



                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: fontInterSemiBold,
                    color: Colors.black,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: healthyColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    healthy,
                    style: TextStyle(
                      color: healthyColor,
                      fontSize: 12,
                      fontFamily: fontInterRegular,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Row(
              children: [

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: List.generate(
                          4,
                              (index) => const Icon(Icons.star, color: Colors.green, size: 16),
                        ),
                      ),

                      SizedBox(height: 4,),

                      InkWell(
                          onTap: () {
                            // Handle menu view
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.green, width: 0.8),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text(
                                  "view menu",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.green,
                                  ),
                                ),
                                SizedBox(width: 1),
                                Icon(Icons.arrow_drop_down, color: Colors.green, size: 20),
                              ],
                            ),
                          )),

                    ],
                  ),
                ),


                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.location_on, size: 14, color: Colors.black54),
                      const SizedBox(width: 2),
                      Text(distance,
                          style: const TextStyle(
                            fontSize: 12,
                            fontFamily: fontInterRegular,
                            color: Colors.black87,
                          )),
                    ],
                  ),
                ),

                const SizedBox(width: 10),
                Text(time,
                    style: const TextStyle(
                      fontSize: 12,
                      fontFamily: fontInterRegular,
                      color: Colors.black87,
                    )),
              ],
            ),
            const SizedBox(height: 10),

            /// Menu items
            if (menu != null) ...menu,
          ],
        ),
      ),
    );
  }


  Widget _menuItem(
      String name, int cal, int protein, int carbs, int fat, int price) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontFamily: fontInterSemiBold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Calories: $cal kcal  Protein: ${protein}g  Carbs: ${carbs}g  Fat: ${fat}g",
                  style: const TextStyle(
                    fontSize: 12,
                    fontFamily: fontInterRegular,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                "\$$price",
                style: const TextStyle(
                  fontFamily: fontInterSemiBold,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 4),
              InkWell(
                onTap: () {
                  // Handle tap
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: greenColor, width: 0.8),
                  ),
                  child: const Text(
                    "Order",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: fontInterSemiBold,
                      color: greenColor,
                    ),
                  ),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}



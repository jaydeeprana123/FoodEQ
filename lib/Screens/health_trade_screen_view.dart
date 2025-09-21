import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_eq/Screens/create_Account_screen_view.dart';
import 'package:food_eq/Screens/home_page_screen_view.dart';
import 'package:food_eq/Screens/preference_screen_view.dart';
import 'package:food_eq/Screens/splash_screen_view.dart';
import 'package:food_eq/Styles/constant.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:food_eq/Styles/my_icons.dart';

import '../Model/orders_model.dart';
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

class HealthTrendsScreen extends StatelessWidget {
   HealthTrendsScreen({super.key});

  List<OrdersModel> completedOrdersModelList = <OrdersModel>[];
   List<String> monthList = [
     "Jan",
     "Feb",
     "Mar",
     "Apr",
     "May",
     "Jun",
     "July",
     "Aug",
     "Sept",
     "Oct",
     "Nov",
     "Dec"
   ];




  @override
  Widget build(BuildContext context) {

    completedOrdersModelList
        .add(OrdersModel(monthList[0], 78));

    completedOrdersModelList
        .add(OrdersModel(monthList[1], 80));

    completedOrdersModelList
        .add(OrdersModel(monthList[2], 70));

    completedOrdersModelList
        .add(OrdersModel(monthList[3], 90));

    completedOrdersModelList
        .add(OrdersModel(monthList[4], 30));

    completedOrdersModelList
        .add(OrdersModel(monthList[5], 80));

    completedOrdersModelList
        .add(OrdersModel(monthList[6], 45));

    completedOrdersModelList
        .add(OrdersModel(monthList[7], 66));

    completedOrdersModelList
        .add(OrdersModel(monthList[8], 33));

    completedOrdersModelList
        .add(OrdersModel(monthList[9], 35));


    completedOrdersModelList
        .add(OrdersModel(monthList[10], 95));

    completedOrdersModelList
        .add(OrdersModel(monthList[11], 15));



    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Header
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.white,
              child: Row(
                children: [
                  const Icon(Icons.arrow_back, color: Colors.black),
                  const SizedBox(width: 10),
                  const Text(
                    "MONDAY, MAY 12",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: fontInterSemiBold,
                      color: Colors.black87,
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

            /// TRENDS Section
            Expanded(
              child: ListView(
                children: [
                  _trendsCard(),
                  _signsSymptomsCard(),
                  _appointmentsCard(),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget _trendsCard() {
    return Card(
      margin: const EdgeInsets.all(12),
      color: yellowCard, // light yellow
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: lighterYellowBg,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              border: Border.all(color: lighterYellowBg, width: 1),
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "TRENDS",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: fontInterSemiBold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 12),

                /// Tabs (Health / Nutrition / Exercise)
                Row(
                  children: [
                    _tabButton("Health", Icons.monitor_heart, true),
                    const SizedBox(width: 6),
                    _tabButton("Nutrition", Icons.no_food_rounded, false),
                    const SizedBox(width: 6),
                    _tabButton("Exercise", Icons.directions_walk, false),
                  ],
                )

              ],
            ),
          ),

          const SizedBox(height: 16),


          Container(
            padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Your Weight",
                    style: const TextStyle(
                      fontSize: 14,
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
                      "ADD TRACKER",
                      style: TextStyle(
                        fontSize: 9,
                        fontFamily: fontInterMedium,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black54, // Button background
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
          ),

          /// Weight details
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _weightStatWithLeftCorner("current\nweight", "70.2 kg", Icons.monitor_weight,
                    Colors.green, Colors.white),
                // const SizedBox(width: 6),
                _weightStat("weight\nchange", "1.3 kg", Icons.refresh, Colors.yellow,
                    Colors.black),
                // const SizedBox(width: 6),
                _weightStat("weight\ngoal", "67.0 kg", Icons.flag,
                    Colors.grey.shade200, Colors.black),
                // const SizedBox(width: 6),
                _weightStat("ideal\nweight", "53.5 kg", Icons.straighten,
                    Colors.brown, Colors.white),
                // const SizedBox(width: 6),
                _weightStatWithRightCorner("BMI", "24.2", Icons.monitor_heart,
                    Colors.black87, Colors.white),
              ],
            ),
          ),


          const SizedBox(height: 16),

          /// Graph (placeholder)
          Container(
            height: 280,
            decoration: BoxDecoration(
              // color: greenColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: SfCartesianChart(
              // Initialize category axis
                primaryXAxis: CategoryAxis(
    interval: 2,
                    majorGridLines:
                    const MajorGridLines(width: 0)),
                palette: <Color>[
                  completedOrderColor,
                  cancelledOrderColor,
                ],
                // Enable legend
                legend: Legend(
                    isVisible: true,
                    position: LegendPosition.bottom),
                series: <CartesianSeries<OrdersModel, String>>[
                  SplineAreaSeries<OrdersModel, String>(
                    // Bind data source
                    dataSource: completedOrdersModelList,
                    borderColor: greenColor,

                    borderWidth: 2,
                    // dataLabelSettings: DataLabelSettings(isVisible: true),
                    xValueMapper: (OrdersModel sales, _) =>
                    sales.month,
                    yValueMapper: (OrdersModel sales, _) =>
                    sales.noOfOrders,
                     legendItemText: "",

                  ),
                  // SplineAreaSeries<OrdersModel, String>(
                  //   // Bind data source
                  //   dataSource: dashboardController
                  //       .cancelledOrdersModelList,
                  //   borderColor: Colors.red,
                  //   borderWidth: 1,
                  //   xValueMapper: (OrdersModel sales, _) =>
                  //   sales.month,
                  //   yValueMapper: (OrdersModel sales, _) =>
                  //   sales.noOfOrders,
                  //   legendItemText: "Cancelled",
                  // )
                ]),
          ),

          // const SizedBox(height: 12),

          /// Timeline filters
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _timelineChip("last year", false),
              _timelineChip("2025", true),
              _timelineChip("month", false),
              _timelineChip("week", false),
            ],
          ),

          const SizedBox(height: 12),
        ],
      ),
    );
  }

  Widget _signsSymptomsCard() {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      color: const Color(0xFF5C4B2E).withOpacity(0.8), // brown background
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Signs & Symptoms",
            style: TextStyle(
              fontSize: 14,
              fontFamily: fontInterSemiBold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),

          Row(
            children: [
              _signSymptsoms("today", true, dark: true),
              _signSymptsoms("this week", false, dark: true),
              _signSymptsoms("this month", false, dark: true),
              _signSymptsoms("last month", false, dark: true),
            ],
          ),

          const SizedBox(height: 12),

          Row(
            children: [

              Text(
                "SYMPTOMS: ",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: fontInterSemiBold,
                  color: Colors.white,
                ),
              ),
              
              SizedBox(width: 6,),

              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _chipItem("headache"),
                  _chipItem("fatigue"),
                ],
              ),
              SizedBox(width: 6,),
             Icon(Icons.add_circle, color: yellowCard,),

              
            ],
          ),

          const SizedBox(height: 8),
          Row(
            children: [

              Text(
                "MOODS: ",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: fontInterSemiBold,
                  color: Colors.white,
                ),
              ),

              SizedBox(width: 6,),

              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _chipItem("calm"),
                ],
              ),
              SizedBox(width: 6,),
              Icon(Icons.add_circle, color: yellowCard,),


            ],
          ),

          const SizedBox(height: 8),

          Row(
            children: [

              Text(
                "SIGNS: ",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: fontInterSemiBold,
                  color: Colors.white,
                ),
              ),

              SizedBox(width: 6,),

              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _chipItem("bloating"),
                ],
              ),
              SizedBox(width: 6,),
              Icon(Icons.add_circle, color: yellowCard,),


            ],
          ),


        ]),
      ),
    );
  }

  Widget _appointmentsCard() {
    return Card(
      margin:  EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      color: greenColorLightBg, // light green
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding:  EdgeInsets.all(16.0),
        child: Row(
          children: [
            const Text(
              "Appointments",
              style: TextStyle(
                fontSize: 14,
                fontFamily: fontInterMedium,
                color: Color(0xFF5C4B2E),
              ),
            ),
            const Spacer(),

            Container(

              height: 25,
              child:  ElevatedButton.icon(
                onPressed: () {
                  // TODO: Add your edit action here
                },
                icon:  Icon(Icons.add_circle, size: 16, color: yellowCard),
                label:  Text(
                  "NEW APPOINTMENT",
                  style: TextStyle(
                    fontSize: 9,
                    fontFamily: fontInterMedium,
                    color: yellowCard,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5C4B2E), // Button background
                  padding:  EdgeInsets.symmetric(horizontal: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // 👈 pill shape
                  ),
                  elevation: 0, // flat look
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

   Widget _tabButton(String title, IconData icon, bool isActive) {
     return Container(
       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
       decoration: BoxDecoration(
         color: isActive ? Colors.green : Colors.white,
         borderRadius: BorderRadius.circular(20),
         border: Border.all(
           color: isActive ? Colors.green : Colors.grey,
           width: 0.6,
         ),
       ),
       child: Row(
         children: [
           Icon(
             icon,
             size: 14,
             color: isActive ? Colors.white : Colors.grey.shade500,
           ),
           const SizedBox(width: 6),
           Text(
             title,
             style: TextStyle(
               fontSize: 12,
               fontFamily: fontInterSemiBold,
               color: isActive ? Colors.white : Colors.grey.shade500,
             ),
           ),
         ],
       ),
     );
   }





   Widget _weightStat(
       String label, String value, IconData icon, Color bgColor, Color textColor) {
     return Expanded(
       child: Container(
         height: 70,
         padding: const EdgeInsets.all(8),
         decoration: BoxDecoration(
           color: bgColor,
           borderRadius: BorderRadius.circular(0),
         ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 // Icon(icon, size: 14, color: textColor),
                 // const SizedBox(width: 4),
                 Flexible(
                   child: Text(
                     label,
                     style: TextStyle(
                       fontSize: label.contains("BMI")?13:9,
                       fontFamily: fontInterSemiBold,
                       color: textColor,
                     ),
                     overflow: TextOverflow.ellipsis,
                   ),
                 ),
               ],
             ),
              SizedBox(height: 6),
             Text(
               value,
               style: TextStyle(
                 fontSize: 12,
                 fontFamily: fontInterSemiBold,
                 color: textColor,
               ),
             ),
           ],
         ),
       ),
     );
   }

   Widget _weightStatWithLeftCorner(
       String label, String value, IconData icon, Color bgColor, Color textColor) {
     return Expanded(
       child: Container(
         height: 70,
         padding: const EdgeInsets.all(8),
         decoration: BoxDecoration(
           color: bgColor,
           borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8)),
         ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 // Icon(icon, size: 14, color: textColor),
                 // const SizedBox(width: 4),
                 Flexible(
                   child: Text(
                     label,
                     style: TextStyle(
                       fontSize: label.contains("BMI")?13:9,
                       fontFamily: fontInterSemiBold,
                       color: textColor,
                     ),
                     overflow: TextOverflow.ellipsis,
                   ),
                 ),
               ],
             ),
             SizedBox(height: 6),
             Text(
               value,
               style: TextStyle(
                 fontSize: 12,
                 fontFamily: fontInterSemiBold,
                 color: textColor,
               ),
             ),
           ],
         ),
       ),
     );
   }


   Widget _weightStatWithRightCorner(
       String label, String value, IconData icon, Color bgColor, Color textColor) {
     return Expanded(
       child: Container(
         height: 70,
         padding: const EdgeInsets.all(8),
         decoration: BoxDecoration(
           color: bgColor,
           borderRadius: BorderRadius.only(topRight: Radius.circular(8),bottomRight: Radius.circular(8)),
         ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 // Icon(icon, size: 14, color: textColor),
                 // const SizedBox(width: 4),
                 Flexible(
                   child: Text(
                     label,
                     style: TextStyle(
                       fontSize: label.contains("BMI")?13:9,
                       fontFamily: fontInterSemiBold,
                       color: textColor,
                     ),
                     overflow: TextOverflow.ellipsis,
                   ),
                 ),
               ],
             ),
             SizedBox(height: 6),
             Text(
               value,
               style: TextStyle(
                 fontSize: 13,
                 fontFamily: fontInterSemiBold,
                 color: textColor,
               ),
             ),
           ],
         ),
       ),
     );
   }

  Widget _timelineChip(String text, bool isActive, {bool dark = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      margin: const EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
        color: isActive
            ? (dark ? greenColor.withOpacity(0.3) : greenColor)
            : greenColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isActive ? Colors.transparent : Colors.white,
          width: 0.6,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 11,
          color: isActive
              ? (dark ? Colors.black : Colors.white)
              : (dark ? Colors.white : Colors.black),
          fontFamily: fontInterRegular
        ),
      ),
    );
  }


   Widget _signSymptsoms(String text, bool isActive, {bool dark = false}) {
     return Container(
       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
       margin: const EdgeInsets.only(right: 6),
       decoration: BoxDecoration(
         color: isActive
             ? (dark ? yellowBg : yellowCard)
             : yellowCard,
         borderRadius: BorderRadius.circular(2),
         border: Border.all(
           color: isActive ? Colors.transparent : Colors.white,
           width: 0.6,
         ),
       ),
       child: Text(
         text,
         style: TextStyle(
             fontSize: 9,
             color: isActive
                 ? (dark ? Colors.black : Colors.black)
                 : (dark ? Colors.black : Colors.black),
             fontFamily: fontInterRegular
         ),
       ),
     );
   }

  Widget _chipItem(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.yellow.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 10, color: Colors.black, fontFamily: fontInterRegular),
      ),
    );
  }
}









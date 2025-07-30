import 'package:flutter/material.dart';
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


class FitnessDashboard extends StatelessWidget {
  final TextStyle titleStyle = TextStyle(
      color: Colors.black, fontSize: 12, fontFamily: fontInterSemiBold);

  final TextStyle subTitleStyle = TextStyle(
      color: Colors.black, fontSize: 16, fontFamily: fontInterSemiBold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightYellowBg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("MONDAY, MAY 12", style: TextStyle(
                  fontSize: 12,
                  fontFamily: fontInterRegular,
                  color: textColor)),
              Text("Welcome back, Timothy",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: fontInterSemiBold,
                      color: Colors.black)),
              const SizedBox(height: 20),

              /// Daily Progress
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: yellowCard,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("DAILY PROGRESS", style: titleStyle),
                    const SizedBox(height: 8),
                    buildProgressRow(Icons.local_drink, Colors.green, 0.8),
                    const SizedBox(height: 6),
                    buildProgressRow(Icons.directions_run, Colors.red, 0.5),
                    const SizedBox(height: 6),
                    buildProgressRow(Icons.water, Colors.blue, 0.7),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              /// Daily Summary
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: yellowCard,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("DAILY SUMMARY", style: titleStyle),
                    const SizedBox(height: 10),
                    summaryRow(
                      icon: Icons.apple,
                      label: "calories consumed",
                      value: "630 Cal",
                    ),
                    Divider(color: Colors.black45),
                    summaryMood(),
                    Divider(color: Colors.black45),
                    summaryWearable(),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              /// Quick Actions
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: yellowCard,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("QUICK ACTIONS", style: titleStyle),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        quickAction(Icons.qr_code_scanner, "Scanner", Colors.green),
                        quickAction(Icons.note, "Log Mood", Colors.blue),
                        quickAction(Icons.watch, "Sync", Colors.purple),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: yellowBg, // Custom yellow

        selectedItemColor: greenColor,
        unselectedItemColor: Colors.black54,
        selectedLabelStyle: const TextStyle(
          color: greenColor,
          fontSize: 12,
          fontFamily: fontInterSemiBold,
        ),
        unselectedLabelStyle: const TextStyle(
          color: Colors.black54,
          fontSize: 12,
          fontFamily: fontInterSemiBold,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Scanner',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            label: 'Tracker',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      )
      ,
    );
  }

  Widget buildProgressRow(IconData icon, Color color, double value) {
    return Row(
      children: [
        Icon(icon, color: color),
        const SizedBox(width: 12),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10), // set your desired radius
            child: LinearProgressIndicator(
              value: value,
              backgroundColor: color.withOpacity(0.3),
              valueColor: AlwaysStoppedAnimation<Color>(color),
              minHeight: 16,
            ),
          )
          ,
        ),
      ],
    );
  }

  Widget summaryRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon, size: 60, color: Colors.black),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(label, style: subTitleStyle),
          
          const SizedBox(height: 8),
          Text(value,
          style: TextStyle(fontSize: 26, fontFamily: fontInterSemiBold))
            ],
          ),
        ),
      ],
    );
  }

  Widget summaryMood() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.emoji_emotions, size: 60, color: Colors.black),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("mood level", style: subTitleStyle),
          
              const SizedBox(height: 8),
          
              Container(
                margin: EdgeInsets.only(left: 12),
                child: LinearProgressIndicator(
                  value: 0.25,
                  minHeight: 10,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                  backgroundColor: Colors.blue.shade200,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget summaryWearable() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.watch_rounded, size: 60, color: Colors.black),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("wearable metrics", style: titleStyle),

                  const SizedBox(height: 8),
                  Text("3,784 Steps",
                      style: TextStyle(fontSize: 26, fontFamily: fontInterSemiBold)),
                  const SizedBox(height: 4),
                  Text("78 BPM",
                      style: TextStyle(fontSize: 20, fontFamily: fontInterSemiBold)),
                ],
              ),
            ),
          ],
        ),

      ],
    );
  }

  Widget quickAction(IconData icon, String label, Color color) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: Colors.white, size: 30),
        ),
        const SizedBox(height: 6),
        Text(label, style: TextStyle(color: Colors.black, fontFamily: fontInterSemiBold))
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_eq/Screens/login_screen_view.dart';
import 'package:food_eq/Styles/my_icons.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Styles/my_colors.dart';
import '../Styles/my_font.dart'; // Make sure you have GetX installed

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // or yellowCard if needed
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: lightYellowBg, // 👈 Bottom bar color
        systemNavigationBarIconBrightness: Brightness.dark, // Dark icons
      ),
    );

    redirectOnPendingState();
  }

  void redirectOnPendingState() {
    Future.delayed(const Duration(seconds: 7), () {
      Get.to(() => const LoginScreenView()); // Use proper constructor
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      fit: StackFit.expand,
      children: [
        // Background color
        Container(
          color: lightYellowBg,
        ),

        // Background image (like a decorative overlay)
        Image.asset(
          splashSpoon,
          width: double.infinity,
          fit: BoxFit.cover,
        ),

        // Centered Column
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.max, // Important: centers children vertically
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 32,),

              Image.asset(
                loginLogo,
                width: 250,
              ),

              const SizedBox(height: 16),

              Text(
                'Reimagine\nyour health',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: fontInterMedium,
                ),
              ),
            ],
          ),
        ),


      // Bottom loading/progress bar (example use)
      Positioned(
        bottom: 32, // Padding from bottom
        left: MediaQuery.of(context).size.width / 2 - 70, // Centered horizontally (140/2)
        child: Container(
          height: 4,
          width: 140,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(2),
          ),
        )),

        const SizedBox(height: 4),
      ],
    ),

    );
  }
}

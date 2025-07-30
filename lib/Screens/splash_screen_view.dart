import 'package:flutter/material.dart';
import 'package:food_eq/Screens/login_screen_view.dart';
import 'package:food_eq/Styles/my_icons.dart';
import 'package:get/get.dart';



import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Make sure you have GetX installed

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirectOnPendingState();
  }

  void redirectOnPendingState() {
    Future.delayed(const Duration(seconds: 4), () {
      Get.to(() => const LoginScreenView()); // Use proper constructor
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            splashBg, // Replace with your image path
            fit: BoxFit.fitHeight,
          ),

          // Optional overlay for better contrast
          Container(
            color: Colors.black.withOpacity(0.3),
          ),

          // Centered content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),

              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Image.asset(
                  iconLogo, // Replace with your logo asset
                  width: double.infinity,
                ),
              ),

              const Spacer(),
              const Spacer(),

              Text(
                'Reimagine\nyour health',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white.withOpacity(0.9),
                ),
              ),

              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}

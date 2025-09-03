import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_eq/Screens/create_Account_screen_view.dart';
import 'package:food_eq/Screens/preference_screen_view.dart';
import 'package:food_eq/Styles/constant.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:food_eq/Styles/my_icons.dart';

import '../Styles/app_text_style.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';

class LoginScreenView extends StatelessWidget {
  const LoginScreenView({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // or yellowCard if needed
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: yellowBg, // 👈 Bottom bar color
        systemNavigationBarIconBrightness: Brightness.dark, // Dark icons
      ),
    );

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Container(
            color: yellowBg,
            // Replace with your actual image path
          ),
          // Semi-transparent overlay
          // Container(
          //   color: textColor.withOpacity(0.4),
          // ),
          // Main Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  // Logo
                  Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Image.asset(
                      loginLogo, // Replace with your logo asset
                      width: double.infinity,
                    ),
                  ),

                  const Spacer(),
                  // Username field

                  Padding(
                    padding: const EdgeInsets.only(left: 4.0, bottom: 4),
                    child: Text("Username",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 14,
                            fontFamily: fontInterMedium)),
                  ),

                  TextField(
                    decoration: InputDecoration(
                      // hintText: 'Username',
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: AppTextStyle.largeMedium.copyWith(
                          fontSize: 15,
                          color: textColor,
                          fontFamily: fontInterRegular),

                      labelStyle: AppTextStyle.largeMedium.copyWith(
                          fontSize: 15,
                          color: textColor,
                          fontFamily: fontInterMedium),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white, // Border color when not focused
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white, // Border color when focused
                          width: 1,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),
                  // Password field
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0, bottom: 4),
                    child: Text("Password",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 14,
                            fontFamily: fontInterMedium)),
                  ),

                  TextField(
                    decoration: InputDecoration(
                      // hintText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: AppTextStyle.largeMedium.copyWith(
                          fontSize: 15,
                          color: textColor,
                          fontFamily: fontInterRegular),

                      labelStyle: AppTextStyle.largeMedium.copyWith(
                          fontSize: 15,
                          color: textColor,
                          fontFamily: fontInterMedium),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white, // Border color when not focused
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white, // Border color when focused
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  // Forgot Password
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                            fontSize: 15,
                            color: textColor,
                            fontFamily: fontInterRegular),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Sign In Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(CreateAccountScreen());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: greenColor,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(4)), // 👈 No curves
                        ),
                      ),
                      child: const Text(
                        'SIGN IN',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: fontInterMedium),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  // Register and Guest Options
                  Center(
                    child: InkWell(
                      onTap: () {
                        Get.to(CreateAccountScreen());
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: "Don't have an account? ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: textColor,
                                  fontFamily: fontInterRegular),
                            ),
                            TextSpan(
                              text: "REGISTER\n",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: greenColor,
                                  fontFamily: fontInterBold),
                            ),
                            const TextSpan(
                              text: "Continue as a guest",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: textColor,
                                  fontFamily: fontInterRegular),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
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

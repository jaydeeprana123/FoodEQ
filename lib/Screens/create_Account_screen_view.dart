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

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool isChecked = false;



  Widget customTextField(String label, {bool obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 4),
          child: Text(label,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: fontInterRegular)),
        ),
        TextField(
          obscureText: obscureText,
          style: const TextStyle(
              color: Colors.black, fontSize: 14, fontFamily: fontInterRegular),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
            filled: true,
            fillColor: Colors.transparent,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.black, width: 0.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.black, width: 0.5),
            ),
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }

  Widget customTextFieldPassword(String label, {bool obscureText = false}) {
    bool isObscured = obscureText; // <-- Persisted outside StatefulBuilder

    return StatefulBuilder(
      builder: (context, setState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 4),
              child: Text(
                label,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: fontInterRegular),
              ),
            ),
            TextField(
              obscureText: isObscured,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: fontInterRegular),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                filled: true,
                fillColor: Colors.transparent,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(color: Colors.black, width: 0.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(color: Colors.black, width: 0.5),
                ),
                suffixIcon: obscureText
                    ? IconButton(
                        icon: Icon(
                          isObscured ? Icons.visibility_off : Icons.visibility,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            isObscured = !isObscured;
                          });
                        },
                      )
                    : null,
              ),
            ),
            const SizedBox(height: 12),
          ],
        );
      },
    );
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // or yellowCard if needed
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: lightYellowBg, // 👈 Bottom bar color
        systemNavigationBarIconBrightness: Brightness.dark, // Dark icons
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: lightYellowBg,
          ),

          //  Image.asset(accountCreateBg, fit: BoxFit.cover),
          //   Container(color: Colors.black.withOpacity(0.4)),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    const Text("Let's create your account",
                        style: TextStyle(
                            fontSize: 20,
                            color: textColor,
                            fontFamily: fontInterMedium)),
                    const SizedBox(height: 25),
                    customTextField("First name"),
                    customTextField("Last name"),
                    customTextField("Email"),
                    customTextFieldPassword("Create password",
                        obscureText: true),
                    customTextFieldPassword("Confirm password",
                        obscureText: true),
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value ?? false;
                            });
                          },
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.white),
                              children: [
                                TextSpan(
                                    text: "By continuing, you agree to the ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: fontInterRegular)),
                                TextSpan(
                                    text: "FoodEz Platform Terms & Conditions",
                                    style: TextStyle(
                                        color: greenColor,
                                        fontSize: 12,
                                        fontFamily: fontInterRegular)),
                                TextSpan(
                                    text: " and ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: fontInterRegular)),
                                TextSpan(
                                    text: "Privacy Policy",
                                    style: TextStyle(
                                        color: greenColor,
                                        fontSize: 12,
                                        fontFamily: fontInterRegular)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(UserInfoScreen());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: greenColor,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(0), // <- 👈 No curve
                          ),
                        ),
                        child: const Text("CREATE ACCOUNT",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: fontInterBold)),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Filled bar
                          Expanded(
                            child: Container(
                              height: 4,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          ),
                          SizedBox(width: 6),
                          // Outlined bar 1
                          Expanded(
                            child: Container(
                              height: 4,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          ),
                          SizedBox(width: 6),
                          // Outlined bar 2
                          Expanded(
                            child: Container(
                              height: 4,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

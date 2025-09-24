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

import 'food_snap2_view.dart';

class FoodSnap1Screen extends StatelessWidget {
  const FoodSnap1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Stack(
          children: [
            /// Top bar
            Positioned(
              top: 16,
              left: 16,
              child: CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.1),
                child: const Icon(Icons.close, color: Colors.white),
              ),
            ),
            Positioned(
              top: 20,
              right: 16,
              child: Row(
                children: const [
                  Text(
                    "Dinner",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                       fontFamily: fontInterSemiBold,
                    ),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.white),
                ],
              ),
            ),

            /// Center logo + text
            Positioned.fill(
              top: 80,
              child: Column(
                children: [
                  // Logo + Title
                  Row(
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
                  SizedBox(height: 20,),

                  /// Camera frame
                  Expanded(
                    child: Center(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // Corner Borders
                          SizedBox(
                            width: 300,
                            height: 440,
                            child: CustomPaint(
                              painter: CornerBorderPainter(),
                            ),
                          ),
                          // Camera Icon in Center
                          Icon(
                            Icons.camera_alt,
                            color: Colors.white54,
                            size: 48,
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  /// Bottom controls
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.image, color: Colors.white, size: 28),
                          InkWell(
                            onTap: (){
                              Get.to(FoodSnap2Screen());
                            }
                            ,child: const Icon(Icons.camera,
                                color: Colors.white, size: 62),
                          ),
                          const Icon(Icons.flash_on, color: Colors.white, size: 28),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Expanded(
                              child: Text("BARCODE",
                                  style: TextStyle(color: Colors.white, fontSize: 13, fontFamily: fontInterSemiBold)),
                            ),
                            Text("PHOTO",
                                style: TextStyle(
                                    color: greenColor,
                                    fontSize: 14
                                    , fontFamily: fontInterSemiBold)),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text("LABEL",
                                    style: TextStyle(color: Colors.white70, fontSize: 13, fontFamily: fontInterSemiBold)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 12,),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}


// Custom Painter for Drawing Only the Corners
class CornerBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    double cornerLength = 30;

    // Top-left
    canvas.drawLine(Offset(0, 0), Offset(cornerLength, 0), paint);
    canvas.drawLine(Offset(0, 0), Offset(0, cornerLength), paint);

    // Top-right
    canvas.drawLine(Offset(size.width, 0), Offset(size.width - cornerLength, 0), paint);
    canvas.drawLine(Offset(size.width, 0), Offset(size.width, cornerLength), paint);

    // Bottom-left
    canvas.drawLine(Offset(0, size.height), Offset(0, size.height - cornerLength), paint);
    canvas.drawLine(Offset(0, size.height), Offset(cornerLength, size.height), paint);

    // Bottom-right
    canvas.drawLine(Offset(size.width, size.height), Offset(size.width - cornerLength, size.height), paint);
    canvas.drawLine(Offset(size.width, size.height), Offset(size.width, size.height - cornerLength), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}




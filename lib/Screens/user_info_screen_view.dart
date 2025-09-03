import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_eq/Screens/preference_screen_view.dart';
import 'package:food_eq/Styles/constant.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:food_eq/Styles/my_icons.dart';

import '../Styles/app_text_style.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';

import 'package:flutter/material.dart';

import 'final_set_up_screen_view.dart';

class UserInfoScreen extends StatelessWidget {
  final List<String> ageOptions = [
    'Under 18',
    '18–24',
    '25–34',
    '35–44',
    '45–54',
    '55–64',
    '65+',
  ];

  final List<String> genderOptions = [
    'Male',
    'Female',
    'Non-binary / Third gender',
    'Prefer not to say',
  ];

  final List<String> heightOptions = List.generate(
    37,
        (index) => "${4 + (index + 48) ~/ 12}'${(index + 48) % 12}\"",
  ); // e.g., 4'0" to 7'0"

  final List<String> weightOptions = List.generate(
    ((400 - 80) ~/ 10 + 1),
        (index) => "${80 + (index * 10)} lbs",
  );

  final List<String> activityLevels = [
    'Sedentary (little or no exercise)',
    'Lightly active (light exercise 1–3 days/week)',
    'Moderately active (moderate exercise 3–5 days/week)',
    'Very active (hard exercise 6–7 days/week)',
    'Extra active (very intense exercise or physical job)',
  ];



  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // or yellowCard if needed
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: lightYellowBg, // 👈 Bottom bar color
        systemNavigationBarIconBrightness: Brightness.dark, // Dark icons
      ),
    );

    String selectedAge = ageOptions[1];
    String selectedGender = genderOptions[0];
    String selectedHeight = heightOptions[1];
    String selectedWeight = weightOptions[1];
    String selectedActivity = activityLevels[1];

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: lightYellowBg, // Replace with your actual background
          ),
         
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: StatefulBuilder(
                builder: (context, setState) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),

                    Center(child: const Text("Tell us more about you", style: TextStyle(fontSize: 20,  color: textColor,  fontFamily: fontInterMedium))),
                    const SizedBox(height: 24),

                    buildLabel("Age"),
                    buildDropdown(
                      selectedAge,
                      ageOptions,
                          (value) => setState(() => selectedAge = value!),
                    ),
                    const SizedBox(height: 12),

                    buildLabel("Gender"),
                    buildDropdown(
                      selectedGender,
                      genderOptions,
                          (value) => setState(() => selectedGender = value!),
                    ),
                    const SizedBox(height: 12),

                    buildLabel("Height"),
                    buildDropdown(
                      selectedHeight,
                      heightOptions,
                          (value) => setState(() => selectedHeight = value!),
                    ),
                    const SizedBox(height: 12),

                    buildLabel("Weight"),
                    buildDropdown(
                      selectedWeight,
                      weightOptions,
                          (value) => setState(() => selectedWeight = value!),
                    ),
                    const SizedBox(height: 12),

                    buildLabel("Activity level"),
                    buildDropdown(
                      selectedActivity,
                      activityLevels,
                          (value) => setState(() => selectedActivity = value!),
                    ),

                    const Spacer(),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(PreferenceScreen());

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:greenColor,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)), // 👈 No curves
                          ),
                        ),

                        child: const Text(
                          'NEXT',
                            style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: fontInterBold),

                        ),
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
                                color: Colors.black,
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
          ),
        ],
      ),
    );
  }

  Widget buildLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, bottom: 4),
      child: Text(
        label,
        style:TextStyle(color: Colors.black, fontSize: 14, fontFamily: fontInterRegular),

      ),
    );
  }

  Widget buildDropdown(
      String selectedValue,
      List<String> options,
      ValueChanged<String?> onChanged,
      ) {
    return Container(
      height: 50,
      child: DropdownButtonFormField<String>(
        value: selectedValue,
        dropdownColor: Colors.white,
        isExpanded: true,
        decoration: InputDecoration(
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
        style: const TextStyle(
            color: Colors.black, fontSize: 14, fontFamily: fontInterRegular),
        iconEnabledColor: Colors.black,

        /// 🔽 Custom dropdown icon
        icon: const Icon(Icons.keyboard_arrow_down, color: Colors.black),

        items: options
            .map((e) => DropdownMenuItem<String>(
          value: e,
          child: Text(
            e,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: fontInterRegular),
          ),
        ))
            .toList(),
        onChanged: onChanged,
      ),
    );
  }

}



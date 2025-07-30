import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_eq/Screens/final_set_up_screen_view.dart';
import 'package:food_eq/Screens/user_info_screen_view.dart';
import 'package:food_eq/Styles/constant.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:food_eq/Styles/my_icons.dart';

import '../Styles/app_text_style.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';

import 'package:flutter/material.dart';

class PreferenceScreen extends StatelessWidget {
  final TextEditingController allergyController = TextEditingController();
  final TextEditingController conditionController = TextEditingController();

  final List<String> allergies = ['Dairy', 'Peanuts'];
  final List<String> conditions = ['Hypertension', 'Diabetes'];

  final List<String> dietaryOptions = [
    'None',
    'Omnivore',
    'Vegetarian',
    'Vegan',
    'Pescatarian',
    'Flexitarian',
    'Paleo',
    'Keto',
    'Low-carb',
    'Low-fat',
    'Gluten-free',
    'Dairy-free',
    'Mediterranean',
    'Whole30',
    'Intermittent Fasting (e.g., 16:8, OMAD)',
  ];

  final List<String> conditionOptions = [
    'None',
    'Diabetes (Type 1 / Type 2 / Prediabetes)',
    'High blood pressure (Hypertension)',
    'High cholesterol',
    'Thyroid disorder (Hypo/Hyperthyroidism)',
    'PCOS',
    'IBS / IBD (Crohn\'s, Ulcerative Colitis)',
    'Celiac disease',
    'GERD / Acid reflux',
    'Lactose intolerance',
    'Anemia',
    'Arthritis',
    'Osteoporosis',
    'Heart disease',
    'Asthma',
    'Food intolerances',
    'Anxiety / Depression',
    'ADHD',
    'Chronic fatigue',
    'Pregnancy / Postpartum',
    'Menopause',
    'Cancer (under treatment / recovery)',
  ];

  final List<String> allergyOptions = [
    'None',
    'Peanuts',
    'Tree nuts',
    'Dairy',
    'Eggs',
    'Shellfish',
    'Fish',
    'Soy',
    'Wheat / Gluten',
    'Sesame',
    'Corn',
    'Nightshades (e.g., tomatoes, peppers)',
    'Citrus',
    'Sulfites',
    'Artificial sweeteners',
    'MSG',
  ];

  @override
  Widget build(BuildContext context) {
    String selectedDiet = dietaryOptions[0];
    String selectedAllergy = allergyOptions[0];
    String selectedCondition = conditionOptions[0];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              color: lightYellowBg, // Replace with your actual image pat
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: StatefulBuilder(
                builder: (context, setState) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: const Text("Almost done",
                            style: TextStyle(
                                fontSize: 20,
                                color: textColor,
                                fontFamily: fontInterMedium))),

                    const SizedBox(height: 24),

                    // Dietary Preferences Dropdown
                    buildLabel(
                      "Dietary Preferences",
                    ),
                    Container(
                      height: 50,
                      child: DropdownButtonFormField<String>(
                        value: selectedDiet,
                        dropdownColor: Colors.white,
                        decoration: buildInputDecoration(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: fontInterRegular),
                        iconEnabledColor: Colors.black,
                        items: dietaryOptions
                            .map((e) =>
                                DropdownMenuItem(value: e, child: Text(e)))
                            .toList(),
                        onChanged: (value) => setState(() {
                          selectedDiet = value!;
                        }),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Allergies Chips
                    buildLabel("Allergies"),
                    ...allergies.map((e) => chipRow(e, () {
                          setState(() {
                            allergies.remove(e);
                          });
                        })),
                    dropdownWithAdd(
                      options: allergyOptions,
                      onAdd: (value) {
                        if (!allergies.contains(value)) {
                          setState(() {
                            allergies.add(value);
                          });
                        }
                      },
                    ),
                    const SizedBox(height: 16),

                    // Health Conditions
                    buildLabel(
                      "Health Conditions",
                    ),
                    ...conditions.map((e) => chipRow(e, () {
                          setState(() {
                            conditions.remove(e);
                          });
                        })),
                    dropdownWithAdd(
                      options: conditionOptions,
                      onAdd: (value) {
                        if (!conditions.contains(value)) {
                          setState(() {
                            conditions.add(value);
                          });
                        }
                      },
                    ),

                    const Spacer(),

                    // NEXT Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(FinalSetupScreen());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: greenColor,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                        ),
                        child: const Text(
                          'NEXT',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: fontInterBold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration() {
    return InputDecoration(
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
    );
  }

  Widget chipRow(String label, VoidCallback onRemove) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        border: Border.all(color: Colors.black, width: 0.5),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: fontInterRegular),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.remove_circle, color: greenColor),
            onPressed: onRemove,
          ),
        ],
      ),
    );
  }

  Widget dropdownWithAdd({
    required List<String> options,
    required void Function(String value) onAdd,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      height: 50,
      child: StatefulBuilder(
        builder: (context, setState) {
          String selected = options[0];

          return Row(
            children: [
              /// 🔧 This ensures dropdown does not overflow
              Expanded(
                child: DropdownButtonFormField<String>(
                  value: selected,
                  dropdownColor: Colors.white,
                  decoration: buildInputDecoration(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: fontInterRegular,
                  ),
                  iconEnabledColor: Colors.black,
                  isExpanded:
                      true, // ✅ Important for dropdown to take full width
                  items: options.map((e) {
                    return DropdownMenuItem(
                      value: e,
                      child: Text(
                        e,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: fontInterRegular,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        selected = value;
                      });
                    }
                  },
                ),
              ),
              const SizedBox(width: 8),

              /// Button takes only required space
              ElevatedButton(
                onPressed: () => onAdd(selected),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(12),
                  backgroundColor: greenColor,
                ),
                child: const Icon(Icons.add, color: Colors.black),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget buildLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, bottom: 4),
      child: Text(
        label,
        style: TextStyle(
            color: Colors.black, fontSize: 14, fontFamily: fontInterRegular),
      ),
    );
  }
}

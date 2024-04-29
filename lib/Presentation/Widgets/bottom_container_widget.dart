import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_bmi_calculator_app_clone/AppUtils/app_constants.dart';
import 'package:flutter_bmi_calculator_app_clone/AppUtils/app_text_style.dart';

/*
Title: BottomContainerWidget 
Purpose:BottomContainerWidget
Created On:29/04/2024
Edited On:29/04/2024
Author: Kalpesh Khandla
*/

class BottomContainerWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;

  BottomContainerWidget({
    super.key,
    required this.text,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: AppColors.kColorEB1555,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: AppConstants.kbottomContainerHeight,
        padding: EdgeInsets.only(bottom: 15.0),
        child: Center(
          child: Text(
            text,
            style: AppTextStyle.kBMITextStyle,
          ),
        ),
      ),
    );
  }
}

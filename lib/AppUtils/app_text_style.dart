import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_bmi_calculator_app_clone/AppUtils/app_font_size.dart';
import 'package:flutter_bmi_calculator_app_clone/AppUtils/app_font_weight.dart';

/*
Title: AppTextStyle Used through App
Purpose:AppTextStyle Used through App
Created On:29/04/2024
Edited On:29/04/2024
Author: Kalpesh Khandla
*/

class AppTextStyle {
  //
  static const klabelTextStyle = TextStyle(
    fontSize: AppFontSize.fontSize18,
    color: AppColors.kColor8D8E98,
  );

  static const klabelTextStyle1 = TextStyle(
    fontSize: AppFontSize.fontSize18,
    color: AppColors.kwhiteColor,
  );
  static const kDigitTextStyle = TextStyle(
    fontSize: AppFontSize.fontSize50,
    color: AppColors.kwhiteColor,
    fontWeight: AppFontWeight.fontWeight900,
  );
  static const klargeBottomButtonTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.kwhiteColor,
    fontSize: AppFontSize.fontSize25,
  );
  static const ktitleTextStyle = TextStyle(
    fontSize: AppFontSize.fontSize50,
    fontWeight: FontWeight.bold,
  );
  static const kResultTextStyle = TextStyle(
    color: AppColors.kColor24D876,
    fontSize: AppFontSize.fontSize27,
    fontWeight: AppFontWeight.fontWeightBold,
  );

  static const kBMITextStyle = TextStyle(
    fontSize: AppFontSize.fontSize50,
    color: AppColors.kwhiteColor,
    fontWeight: AppFontWeight.fontWeightBold,
  );
  static const kBodyTextStyle = TextStyle(
    fontSize: AppFontSize.fontSize22,
    color: AppColors.kwhiteColor,
  );

  // 12 Size Font Size
  // static TextStyle gilroy12Regular({Color? color}) => TextStyle(
  //       fontFamily: 'Gilroy',
  //       fontSize: AppFontSize.fontSize12,
  //       fontWeight: FontWeight.w400,
  //       color: color,
  //     );

  // static TextStyle gilroy12Bold({Color? color}) => TextStyle(
  //       fontFamily: 'Gilroy',
  //       fontSize: AppFontSize.fontSize12,
  //       fontWeight: AppFontWeight.fontWeight600,
  //       color: color,
  //     );

  // static TextStyle gilroy12Medium({Color? color}) => TextStyle(
  //       fontFamily: 'Gilroy',
  //       fontSize: AppFontSize.fontSize12,
  //       fontWeight: AppFontWeight.fontWeightBold,
  //       color: color,
  //     );
}

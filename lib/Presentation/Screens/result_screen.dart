import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_bmi_calculator_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_bmi_calculator_app_clone/AppUtils/app_text_style.dart';
import 'package:flutter_bmi_calculator_app_clone/Presentation/Widgets/bottom_container_widget.dart';
import 'package:flutter_bmi_calculator_app_clone/Presentation/Widgets/reusable_item_widget.dart';

/*
Title: ResultScreen 
Purpose:ResultScreen
Created On:29/04/2024
Edited On:29/04/2024
Author: Kalpesh Khandla
*/

class ResultScreen extends StatelessWidget {
  final String resultText;
  final String bmi;
  final String advise;
  final Color textColor;

  ResultScreen({
    super.key,
    required this.textColor,
    required this.resultText,
    required this.bmi,
    required this.advise,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(AppStrings.bmiCalculator),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                AppStrings.yourResult,
                style: AppTextStyle.ktitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableItemWidget(
              colour: AppColors.kColor1D1E33,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmi,
                    style: AppTextStyle.kBMITextStyle,
                  ),
                  Text(
                    AppStrings.normalBMIRange,
                    style: AppTextStyle.klabelTextStyle,
                  ),
                  Text(
                    AppStrings.eightyTeen,
                    style: AppTextStyle.kBodyTextStyle,
                  ),
                  Text(
                    advise,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.kBodyTextStyle,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    constraints: BoxConstraints.tightFor(
                      width: 200.0,
                      height: 56.0,
                    ),
                    fillColor: AppColors.kwhiteColor,
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      AppStrings.saveResult,
                      style: AppTextStyle.kBodyTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomContainerWidget(
              text: AppStrings.reCalculate,
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}

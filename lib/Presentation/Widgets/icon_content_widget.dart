import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator_app_clone/AppUtils/app_text_style.dart';

const sizedBox = SizedBox(
  height: 15.0,
);

const iconSize = 80.0;

/*
Title: IconContentWidget 
Purpose:IconContentWidget
Created On:29/04/2024
Edited On:29/04/2024
Author: Kalpesh Khandla
*/

class IconContentWidget extends StatelessWidget {
  final IconData myicon;
  final String text;
  IconContentWidget({
    super.key,
    required this.myicon,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          myicon,
          size: iconSize,
        ),
        sizedBox,
        Text(
          text,
          style: AppTextStyle.klabelTextStyle1,
        ),
      ],
    );
  }
}

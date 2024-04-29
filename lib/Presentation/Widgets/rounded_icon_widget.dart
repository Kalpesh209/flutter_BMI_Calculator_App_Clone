import 'package:flutter/material.dart';

/*
Title: RoundIconButtonWidget 
Purpose:RoundIconButtonWidget
Created On:29/04/2024
Edited On:29/04/2024
Author: Kalpesh Khandla
*/

class RoundIconButtonWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  RoundIconButtonWidget({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 0.0,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

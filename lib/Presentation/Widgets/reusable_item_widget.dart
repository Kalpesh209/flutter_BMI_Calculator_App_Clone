import 'package:flutter/material.dart';

/*
Title: ReusableItemWidget 
Purpose:ReusableItemWidget
Created On:29/04/2024
Edited On:29/04/2024
Author: Kalpesh Khandla
*/

class ReusableItemWidget extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  ReusableItemWidget({
    super.key,
    required this.colour,
    required this.cardChild,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}

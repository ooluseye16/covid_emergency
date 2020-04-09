import 'package:flutter/material.dart';

class PrecautionHeadline extends StatelessWidget {

  final String headlineText;

  PrecautionHeadline({this.headlineText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Text(headlineText, style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
          fontWeight: FontWeight.w700
      ),),
      height: 45.0,
    );
  }
}
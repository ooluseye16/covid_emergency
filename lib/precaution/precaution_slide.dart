import 'package:flutter/material.dart';

class PrecautionSlide extends StatelessWidget {
  final int num;
  PrecautionSlide(this.num);

  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage('images/precautions_$num.jpg'));
  }
}
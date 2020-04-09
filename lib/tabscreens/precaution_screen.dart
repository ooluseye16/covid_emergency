import 'package:flutter/material.dart';
import 'package:covid_emergency/precaution/precaution_headline.dart';
import 'package:covid_emergency/precaution/precaution_slide.dart';

class PrecautionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        PrecautionHeadline(
          headlineText: 'ASK WHO',
        ),
        Image(
          image: AssetImage('images/handshaking.png'),
        ),
        Image(
          image: AssetImage('images/safe-greetings.png'),
        ),
        Image(
          image: AssetImage('images/wearing-gloves.png'),
        ),
        PrecautionHeadline(
          headlineText: 'BE READY FOR CORONAVIRUS',
        ),
        PrecautionSlide(1),
        PrecautionSlide(2),
        PrecautionSlide(3),
        PrecautionSlide(4),
        PrecautionSlide(5),
        PrecautionSlide(6),
        PrecautionSlide(7),
        PrecautionSlide(8),
        PrecautionSlide(9),
        PrecautionHeadline(
          headlineText: 'PROTECT YOURSELF AND OTHERS',
        ),
        PRImages(1),
        PRImages(2),
        PRImages(3),
        PRImages(4),
        PrecautionHeadline(
          headlineText: 'HOW TO COPE WITH STRESS',
        ),
        Image.asset('images/stress.jpg'),
        Image.asset('images/children-stress.jpg'),
        PrecautionHeadline(
          headlineText: 'STAY HEALTHY WHILE TRAVELING',
        ),
        StayHealthy(1),
        StayHealthy(2),
        StayHealthy(3),
        StayHealthy(4),
      ],
    );
  }
}

class PRImages extends StatelessWidget {
 final int num;
 PRImages(this.num);

  @override
  Widget build(BuildContext context) {
    return Image.asset('images/blue-$num.png');
  }
}

class StayHealthy extends StatelessWidget {

  final int num;
  StayHealthy(this.num);

  @override
  Widget build(BuildContext context) {
    return Image.asset('images/$num.png');
  }
}



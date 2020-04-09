import 'package:flutter/material.dart';
const kSpace = SizedBox(
  height: 10.0,
);
class SymptomsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
      children: <Widget>[
        Symptoms(1),
        kSpace,
        Symptoms(2),
        kSpace,
        Symptoms(3),
        kSpace,
        Symptoms(4),
      ],
    );
  }
}

class Symptoms extends StatelessWidget {
final int num;
Symptoms(this.num);
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('images/symptoms_$num.png'),
    );
  }
}

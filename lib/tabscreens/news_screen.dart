import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid_emergency/clickable_card.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:covid_emergency/news/lower_newsBar.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(bottom: 7.0),
      children: <Widget>[
        GestureDetector(
          child: ClickableCard(
            indexNo: 0,
          ),
          onTap: () {
            //TODO: Navigate to news page index 0
          },
        ),
        GestureDetector(
          child: ClickableCard(
            indexNo: 1,
          ),
          onTap: () {
            //TODO: Navigate to news page index 1
          },
        ),
        SizedBox(
          height: 10.0,
        ),
        LowerNewsBar(),
        SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
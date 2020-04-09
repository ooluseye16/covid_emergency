import 'package:flutter/material.dart';
import 'news/news_list.dart';


class ClickableCard extends StatelessWidget {
  final int indexNo;

  ClickableCard({@required this.indexNo});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image(
              image: AssetImage(images[indexNo]),
              fit: BoxFit.fill,
              width: 360.0,
              height: 250.0,
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Latest News',
              style: TextStyle(
                color: Colors.lightBlue,
                fontStyle: FontStyle.italic,
                fontSize: 10.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              newsHeadline[indexNo],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            SizedBox(
              height: 3.0,
            ),
            Text(
              newsBodyIntro[indexNo],
              style: TextStyle(
                fontSize: 11.0,
                color: Colors.grey.shade700,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
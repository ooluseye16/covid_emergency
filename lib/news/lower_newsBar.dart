import 'package:flutter/material.dart';
import 'news_list.dart';

class LowerNewsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Latest News',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset(
                        lowerImages[index],
                        height: 130.0,
                        width: 130.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              width: 200,
                              child: Text(
                                lowerNews[index],
                                softWrap: true,
                                textAlign: TextAlign.left,
                              ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '${index * 4 + 1} minutes ago',
                            style: TextStyle(
                                color: Color(0xff30298D),
                                fontSize: 10.0,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
              itemCount: lowerNews.length,
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Divider();
              },
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('All News'),
                Icon(
                  Icons.arrow_forward,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

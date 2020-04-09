import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intent/intent.dart' as intent;
import 'package:intent/action.dart' as action;

const kSpace = SizedBox(
  height: 10.0,
);
const kInputDecoration = InputDecoration(
    contentPadding: EdgeInsets.only(top: 5.0, left: 5.0),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black,),
      borderRadius: BorderRadius.all(Radius.circular(10),
      ),
    ),
    border: OutlineInputBorder(),
    hintText: 'Input Address',
    hintStyle: TextStyle(
      fontSize: 15,
    )
);
class ReportScreen extends StatefulWidget {
  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  String text1, text2;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 40.0),
      children: <Widget>[
        Text(
          'Report a COVID-19 case or report illegal gathering in violation of the Fedral Government Law.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        kSpace,
        Container(
          height: 40.0,
          child: TextField(
            decoration: kInputDecoration,
            onChanged: (value) {
              text1 = value;
            },
          ),
        ),
        kSpace,
        Container(
          height: 40.0,
          child: TextField(
            onChanged: (newValue) {
              text2 = newValue;
            },
            decoration: kInputDecoration.copyWith(hintText: 'What are you reporting?'),
          ),
        ),
        kSpace,
        RaisedButton(
          child: Text(
            'Send',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          color: Color(0xFF1A73E8),
          onPressed: () {
            print('value1 :' + text1);
            print("value2:" + text2);
            Navigator.pop(context);
            return showDialog<void>(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Color(0xffF9F9F9),
                    title: Text(
                      'Message Sent!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff2EC6F8),
                      ),
                    ),
                    content: Image.asset(
                      'images/unnamed.gif',
                    ),
                  );
                });
          },
        ),
        kSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              width: 100.0,
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                  ),
                )),
              ),
            ),
            Text('OR', style: TextStyle(
              fontSize: 20,
            )),
            SizedBox(
              width: 100.0,
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                  ),
                )),
              ),
            ),
          ],
        ),
        kSpace,
        RaisedButton(
          onPressed: () => setState(() {
            intent.Intent()
              ..setAction(action.Action.ACTION_DIAL)
              ..setData(Uri(scheme: 'tel', path: '+2348066402763'))
              ..startActivity().catchError((e) => print(e));
          }),
          child: Icon(
            Icons.call,
            color: Colors.white,
          ),
          color: Colors.green,
        )
      ],
    );
  }
}

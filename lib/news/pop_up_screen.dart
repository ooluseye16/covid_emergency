import 'package:flutter/material.dart';

class PopUp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: IconButton(
          onPressed: () {

          },
          icon: Icon(
            Icons.call,
          ),
        )
      ),
    );
  }
}

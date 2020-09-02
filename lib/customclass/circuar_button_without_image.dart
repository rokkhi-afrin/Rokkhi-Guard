import 'package:flutter/material.dart';

class Circular_button extends StatelessWidget {
  var text;
  VoidCallback callback;


  Circular_button({this.text,this.callback});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0),
      child: ButtonTheme(
        height: 70,
        child: Column(
          children: [
            RaisedButton(
              textColor: Colors.black,
              color: Colors.white70,
              child: Text(text),
              onPressed: callback,
              shape: CircleBorder(),
            ),

          ],
        ),
      ),
    );
  }
}

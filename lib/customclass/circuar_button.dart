import 'package:flutter/material.dart';

class Circular_button extends StatelessWidget {
  var text;
  Circular_button(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0),
      child: ButtonTheme(
        height: 70,
        child: RaisedButton(
          textColor: Colors.black,
          color: Colors.white70,
          child: Text(text),
          onPressed: () {},
          shape: CircleBorder(),
        ),
      ),
    );
  }
}

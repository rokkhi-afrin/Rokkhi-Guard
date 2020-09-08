import 'package:flutter/material.dart';

class Rounded_corner_button extends StatelessWidget {
  var text;

  Rounded_corner_button(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0),
      child:Container(

        child: OutlineButton(
            color: Colors.red,
            textColor: Colors.black,
            child:Text( text),
            onPressed: (){},
            shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))
        ),
      ),
    );
  }
}

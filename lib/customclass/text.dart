import 'package:flutter/material.dart';

class Custom_text extends StatelessWidget {
  var text;
  IconData icon;
  Custom_text(this.text,this.icon);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: ButtonTheme(
        height: 70,
        child:Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child:Icon(
                icon,
                color: Colors.pink,
                size: 24.0,

              ),
            ),

            Expanded(

              flex: 5,
              child: Text(text,style: TextStyle(fontSize: 15,color: Colors.black)),
            ),

          ],
        ),
      ),
    );
  }
}

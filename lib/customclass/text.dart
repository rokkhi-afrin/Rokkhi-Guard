import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
  var text;

  Customtext(this.text);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),

      child: ButtonTheme(
        height: 70,
        child:Row(
          children: <Widget>[


            Expanded(

              flex: 5,
              child: Text(text,style: TextStyle(fontSize: 15,color: Colors.red)),
            ),

          ],
        ),
      ),
    );
  }
}

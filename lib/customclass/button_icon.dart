import 'package:flutter/material.dart';

class Button_icon extends StatelessWidget {
  var text;
  IconData icon;
  Button_icon(this.text,this.icon);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: ButtonTheme(
            height: 70,
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.white70,
              child:  Icon(
                icon,
                color: Colors.pink,
                size: 24.0,

              ),
              onPressed: () {},
              shape: CircleBorder(),
            ),
          ),
        ),
        Expanded(

          flex: 5,
          child: Text(text,style: TextStyle(fontSize: 15,color: Colors.black)),
        ),

      ],
    );
  }
}

import 'package:flutter/material.dart';

class Text_img extends StatelessWidget {
  var text;
  var img;

  Text_img(this.text,this.img);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: ButtonTheme(
        height: 70,
        child:Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 2),
              height: 70,
              child:Image(image: AssetImage(img))

            ),

            Expanded(

              flex: 1,
              child: Text(text,style: TextStyle(fontSize: 15,color: Colors.black)),
            ),

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Imagee extends StatelessWidget {

  var img;

  Imagee (this.img);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: ButtonTheme(
        height: 70,
        child:Container(
            padding: EdgeInsets.only(bottom: 2),
            height: 70,
            child: Image(image: AssetImage(img)),

        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RounderCornerTextField extends StatelessWidget {
  var hintText;
  RounderCornerTextField(this.hintText);
  @override
  Widget build(BuildContext context) {
    return TextField(



      decoration: new InputDecoration(
          focusedBorder: new OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red,width: 2.1),
            borderRadius:  BorderRadius.all(
               Radius.circular(10.0),


            ),
          ),
          border: new OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey,width: 2.1),
            borderRadius:  BorderRadius.all(
              Radius.circular(10.0),


            ),
          ),
          filled: true,
          hintStyle: new TextStyle(color: Colors.black),
          hintText: hintText,
          fillColor: Colors.white),
    );
  }
}

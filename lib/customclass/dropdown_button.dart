import 'package:flutter/material.dart';
String dropdownValue = 'Demo Bulding (SLECTED)';

class Dropdown_button extends StatefulWidget {

  @override
  _Dropdown_buttonState createState() => _Dropdown_buttonState();
}

class _Dropdown_buttonState extends State<Dropdown_button> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:  EdgeInsets.fromLTRB(40,1, 1,1),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.red)
      ),


      child: DropdownButton<String>(
        value: dropdownValue,
       //icon: Icon(Icons.arrow_drop_down_circle),
      // iconSize: 24,
       // elevation: 11,
        style: TextStyle(
            color: Colors.black
        ),

        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['Demo Bulding (SLECTED)']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        })
            .toList(),
      ),
    );;
  }
}

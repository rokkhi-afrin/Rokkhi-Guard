import 'package:flutter/material.dart';
String dropdownValue = 'Demo Bulding (Selected)';

class Dropdown_button extends StatefulWidget {

  @override
  _Dropdown_buttonState createState() => _Dropdown_buttonState();
}

class _Dropdown_buttonState extends State<Dropdown_button> {
  @override
  Widget build(BuildContext context) {
    return  DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_drop_down_circle),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(
          color: Colors.green
      ),

      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Demo Bulding (Selected)']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      })
          .toList(),
    );;
  }
}

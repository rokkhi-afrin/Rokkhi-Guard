// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:guard_app/activities/home_page.dart';
import 'package:guard_app/activities/settings.dart';
import 'package:guard_app/customclass/alert.dart';
import 'package:guard_app/customclass/circuar_button.dart';
import 'package:guard_app/customclass/dropdown_button.dart';
import 'package:guard_app/customclass/image.dart';
import 'package:guard_app/customclass/rounder_corner_textfield.dart';
import 'package:guard_app/customclass/text_img.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.white,

        ),
        body: Center(
          child: Container(
            height: 700,
            child: ListView(

              children: <Widget>[
                Container(

                  padding: EdgeInsets.fromLTRB(3,1,2,1),
                  height: 100,
                  width: 100,

                 child:  Imagee('assets/logoo.png'),

                ),
                SizedBox(height: 10),
                Container(
                  //height: 50,
                  padding: EdgeInsets.only(left: 50, right: 50),
                  // color: Colors.amber[100],
                  child: Dropdown_button(),
                ),
                SizedBox(height: 20),
                Container(
                  //height: 50,
                  padding: EdgeInsets.only(left: 50, right: 50),
                   color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(child: RounderCornerTextField("")),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(child: RounderCornerTextField("")),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(child: RounderCornerTextField("")),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(child: RounderCornerTextField("")),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(child: RounderCornerTextField("")),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Expanded(child: Circular_button("1")),
                    Expanded(child: Circular_button("2")),
                    Expanded(child: Circular_button("3")),
                  ],
                ),

                SizedBox(height: 10),
                Container(
                  child: Row(
                    children: <Widget>[
                  Expanded(child: Circular_button("4")),
                  Expanded(child: Circular_button("5")),
                  Expanded(child: Circular_button("6")),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                Expanded(child: Circular_button("7")),
                Expanded(child: Circular_button("8")),
                Expanded(child: Circular_button("9")),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                Expanded(child: Circular_button("C")),
                Expanded(child: Circular_button("0")),
                Expanded(child: Circular_button("X")),
                  ],
                ),
                Container(
                  height: 50,
                  child: RaisedButton(

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => home()),
                      );
                    },
                    child: Text(
                        'Enabled Button',
                        style: TextStyle(fontSize: 20)
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
    );
  }
}

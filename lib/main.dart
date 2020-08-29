// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:guard_app/activities/settings.dart';
import 'package:guard_app/customclass/button.dart';
import 'package:guard_app/customclass/dropdown_button.dart';
import 'package:guard_app/customclass/rounder_corner_textfield.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
          leading: IconButton(
            icon: Icon(Icons.settings),
            highlightColor: Colors.pink,
            onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => test()),
            );},
          ),
        ),
        body: Center(
          child: ListView(

            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 5),
                height: 70,



                child: Image.network(
                  'https://picsum.photos/2250?image=9',
                  fit: BoxFit.cover,
                ),
              ),

              Container(
                //height: 50,
                padding: EdgeInsets.only(
                  left: 50,right: 50
                ),
               // color: Colors.amber[100],
                child: Dropdown_button(),
              ),
              SizedBox(height: 10),
              Container(
                //height: 50,
                padding: EdgeInsets.only(
                    left: 50,right: 50
                ),
                // color: Colors.amber[100],
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                          child: RounderCornerTextField()
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                          child: RounderCornerTextField()
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                          child: RounderCornerTextField()
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                          child: RounderCornerTextField()
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                          child: RounderCornerTextField()
                      ),
                    ),


                  ],
                ),
              ),
              SizedBox(height: 10),


              Row(
                children: <Widget>[
                  Expanded(
                    child: Circular_button("1")
                  ),
                  Expanded(
                      child: Circular_button("2")
                  ),
                  Expanded(
                      child: Circular_button("3")
                  ),
                ],
              ),

                SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Circular_button("4")
                  ),
                  Expanded(
                      child: Circular_button("5")
                  ),
                  Expanded(
                      child: Circular_button("6")
                  ),
                ],
              ),
             SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Circular_button("7")
                  ),
                  Expanded(
                      child: Circular_button("8")
                  ),
                  Expanded(
                      child: Circular_button("9")
                  ),
                ],
              ),
               SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Circular_button("C")
                  ),
                  Expanded(
                      child: Circular_button("0")
                  ),
                  Expanded(
                      child: Circular_button("X")
                  ),
                ],
              ),







            ],
          ),
        ),
      ),
    );
  }
}

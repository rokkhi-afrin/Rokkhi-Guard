// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:guard_app/customclass/dropdown_button.dart';
import 'package:guard_app/customclass/rounder_corner_textfield.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: ListView(

            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 5),
                height: 250,



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
                          //test

                          child: RounderCornerTextField()
                      ),

                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'file:///Users/rokkhi/AndroidStudioProjects/guard_app/lib/customclass/text_and_icon.dart';
import 'package:guard_app/activities/notifications.dart';
import 'package:guard_app/customclass/button_icon.dart';
import 'package:guard_app/customclass/rounder_corner_textfield.dart';
import 'package:guard_app/customclass/text.dart';


class test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
        ),
        body: Center(
          child: ListView(
            children: [
              Container(
//                padding: EdgeInsets.only(bottom: 9),
                height: 100,



                child: Image.network(
                  'https://picsum.photos/2250?image=9',
                  fit: BoxFit.cover,
                ),
              ),


              SizedBox(height: 80),





                  Column(

                    children: [
                      Container(


                        padding:  EdgeInsets.only(left: 50,right:50),
                        child: RaisedButton(

                          // Within the `FirstRoute` widget
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Notifications()),
                            );
                          },


                          textColor: Colors.white,

//                  padding:  EdgeInsets.only(left: 50,right:50),
                          child: Custom_text("সাধারণ",Icons.circle),
                        ),

                      ),



              SizedBox(height: 20),
              Container(

                padding:  EdgeInsets.only(left: 50,right:50),
                child: RaisedButton(
                  onPressed: () {



                  },
                  textColor: Colors.white,

//                  padding:  EdgeInsets.only(left: 50,right:50),
                  child: Custom_text("অ্যাপ চালাতে কোন সাহায্য প্রয়োজন হলে ",Icons.help_center),
                ),

              ),

              SizedBox(height: 20),
              Container(

                padding:  EdgeInsets.only(left: 50,right:50),
                child: RaisedButton(
                  onPressed: () {_showMyDialog(context);},
                  textColor: Colors.white,
                  child: Custom_text("অ্যাপ এ কোন  সমস্যা পেলে ",Icons.help_center),
                ),

              ),  ],
                  ),



            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(

        title: Customtext("Submit your report here(এখানে অভিযোগ করুন )"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.amber[500],
                child: RounderCornerTextField("Report title(শিরোনাম)"),
              ),
              Container(
                height: 50,
                color: Colors.amber[500],
                child: RounderCornerTextField("Report details(বিস্তারিত)"),
              ),







            ],
          ),
        ),
        actions: <Widget>[
//          FlatButton(
//            child:
//            onPressed: () {
//              Navigator.of(context).pop();
//            },
//          ),
        ],
      );
    },
  );
}
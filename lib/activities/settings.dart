// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'file:///Users/rokkhi/AndroidStudioProjects/guard_app/lib/activities/notifications.dart';
import 'file:///Users/rokkhi/AndroidStudioProjects/guard_app/lib/customclass/text.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: test(),
  ));
}

class test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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



              Container(


                padding:  EdgeInsets.only(left: 50,right:50),
                child: RaisedButton(

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => notifications()),
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
                  onPressed: () {},
                  textColor: Colors.white,

//                  padding:  EdgeInsets.only(left: 50,right:50),
                  child: Custom_text("অ্যাপ চালাতে কোন সাহায্য প্রয়োজন হলে ",Icons.help_center),
                ),

              ),

              SizedBox(height: 20),
              Container(

                padding:  EdgeInsets.only(left: 50,right:50),
                child: RaisedButton(
                  onPressed: () {},
                  textColor: Colors.white,

//                  padding:  EdgeInsets.only(left: 50,right:50),
                  child: Custom_text("অ্যাপ এ কোন  সমস্যা পেলে ",Icons.help_center),
                ),

              ),



            ],
          ),
        ),
      ),
    );
  }
}


// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:guard_app/activities/settings.dart';
import 'package:guard_app/customclass/button.dart';
import 'package:guard_app/customclass/button_icon';
import 'package:guard_app/customclass/button_icon.dart';
import 'package:guard_app/customclass/dropdown_button.dart';
import 'package:guard_app/customclass/text.dart';
import 'package:guard_app/customclass/text_img.dart';



class home extends StatelessWidget {
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
            onPressed: () {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => test()),
              );
            },
          ),
        ),
        body: Center(
          child: ListView(
            children: [
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
                padding: EdgeInsets.only(left: 50, right: 50),
                // color: Colors.amber[100],
                child: Dropdown_button(),
              ),

             Container(
               height: 110,
               child: Row(
                 children: <Widget>[
                   Expanded(child:  Button_icon("গেট পাস ",Icons.people_sharp)),
                   Expanded(child:  Button_icon("নতুন অতিথি",Icons.people)),
                   Expanded(child:  Button_icon("অতিথি তালিকা",Icons.list)),
                  ],
                ),
             ),
              Container(
                height: 110,
                child: Row(
                  children: <Widget>[

                    Expanded(child:  Text_img("নোটিশ বোর্ড ","assets/noticebo.png")),

                    Expanded(child:  Text_img("পার্সেল/চিঠি","assets/parcel.png")),
                    Expanded(child:  Button_icon("প্রোফাইল",Icons.people_rounded)),

                  ],
                ),
              ),
              Container(
                height: 110,
                child: Row(
                  children: <Widget>[

                    Expanded(child:  Text_img("পার্কিং ","assets/parking.png")),
                    Expanded(child:  Button_icon("শিশু সুরক্ষা ",Icons.child_care)),
                    Expanded(child:  Button_icon("কল লগ ",Icons.call_end_outlined)),



                  ],
                ),
              ),Container(
                height: 110,
                child: Row(
                  children: <Widget>[

                    Expanded(
                        flex: 3,
                        child:  Text_img("গার্ড লিস্ট  ","assets/service1.png")),
                    Expanded(
                        flex: 3,
                        child:  Button_icon("লগ আউট ",Icons.logout)),
                    Expanded(
                        flex: 3,
                        child:  Container()),




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
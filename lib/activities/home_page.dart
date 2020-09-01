// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:guard_app/activities/settings.dart';
import 'package:guard_app/customclass/circuar_button.dart';
import 'package:guard_app/customclass/button_icon.dart';
import 'package:guard_app/customclass/dropdown_button.dart';
import 'package:guard_app/customclass/image.dart';
import 'package:guard_app/customclass/text.dart';
import 'package:guard_app/customclass/text_img.dart';



class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.white,
          title:  Container(
            padding: EdgeInsets.only(bottom: 5),
            height: 70,
            child: Container(

              padding: EdgeInsets.fromLTRB(10,3,3,3),
              height: 150,
              width: 200,

              child:  Imagee('assets/logoo.png'),

            ),


          ),
          leading: IconButton(
            color: Colors.red,
            icon: Icon(Icons.settings),
            highlightColor: Colors.blue,
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
              SizedBox(height: 20),
              Container(
                //height: 50,
                padding: EdgeInsets.only(left: 50, right: 50),
                // color: Colors.amber[100],
                child: Dropdown_button(),
              ),
              SizedBox(height: 20),

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
              SizedBox(height: 10),
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
              SizedBox(height: 10),
              Container(
                height: 110,
                child: Row(
                  children: <Widget>[

                    Expanded(child:  Text_img("পার্কিং ","assets/parking.png")),
                    Expanded(child:  Button_icon("শিশু সুরক্ষা ",Icons.child_care)),
                    Expanded(child:  Button_icon("কল লগ ",Icons.call_end_outlined)),



                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
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
      );

  }
}
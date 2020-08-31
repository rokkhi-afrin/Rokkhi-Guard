import 'package:flutter/material.dart';
import 'package:guard_app/customclass/text.dart';
import 'package:guard_app/customclass/text_and_icon.dart';
import 'package:guard_app/customclass/toggle.dart';

class  Notifications extends StatelessWidget {
  var isSelected;

  var _enable = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,

          title: Text('Notification'),
        ),
        body: Center(
          child:  Container(
            height: 500,
            padding: EdgeInsets.only(top: 9),
            child: ListView(

              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child:Custom_text("New message notification",Icons.message),
                    ),
                    Expanded(
                      flex: 1,
                      child:CustomSwitch(
                        value: _enable,
                        onChanged: (bool val){
//                    setState(() {
//                      _enabled = val;
//                    });
                        },
                      ),

                    ),

                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child:Custom_text("Ringtone",Icons.music_note),
                    ),


                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child:Custom_text("Vibrate",Icons.vibration),
                    ),
                    Expanded(
                      flex: 1,
                      child:CustomSwitch(
                        value: _enable,
                        onChanged: (bool val){
//                    setState(() {
//                      _enabled = val;
//                    });
                        },
                      ),

                    ),

                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child:Custom_text("Log Out",Icons.logout),
                    ),


                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child:Customtext("About"),
                    ),


                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child:Customtext("Version"),
                    ),


                  ],
                ),SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child:Customtext("Log Out "),
                    ),


                  ],
                ), Row(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child:Customtext("এই অপশনটি গার্ডদের জন্য না ,  শুধু মাএ অফিস এর জন্য "),
                    ),


                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
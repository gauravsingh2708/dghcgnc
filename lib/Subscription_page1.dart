import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SubscriptionPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 40.0, top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.cancel),
                      color: Colors.black,
                      iconSize: 38.0,
                      onPressed: () {})
                ],
              ),
            ),
            SizedBox(height: 50.0,),
            Center(
                child: Text(
              'Your Personalized Training',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            )),
            Center(
                child: Text(
                  'Plan Is Ready!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 15.0,),
            Center(
                child: Text(
                  "You'll start with Beginner 1.0",
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 20.0,
                  ),
                )),
            SizedBox(height: 15.0,),
            Center(
              child: Container(
                width: size.width*0.9,
                height: size.height*0.3,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20.0)
                ),
              ),
            ),
            SizedBox(height: 18.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Center(
                          child: Text(
                            '5 Workouts',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold),
                          )),
                      Center(
                          child: Text(
                            'PER WEEK',
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 17.0,
                                ),
                          )),
                    ],
                  ),
                ),
                SizedBox(width: 20.0,),
                Container(
                  child: Column(
                    children: <Widget>[
                      Center(
                          child: Text(
                            'Avg 30 Mins',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold),
                          )),
                      Center(
                          child: Text(
                            'PER WORKOUT',
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 17.0,
                                ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height:size.height*0.15,),
            Center(child:MaterialButton(
              onPressed:(){},
              child: Container(
                width: size.width*0.9,
                height: 50.0,
                child: Center(child:Text('Choose your plan',style: TextStyle(fontSize: 20.0,color: Colors.white),),),
                decoration:BoxDecoration(
                  border: Border.all(color: Colors.deepPurple),
                    color: Colors.deepPurple,

                    borderRadius: BorderRadius.circular(30.0)
                ) ,
              ),
            ))
          ],
        ),
      ),
    );
  }
}

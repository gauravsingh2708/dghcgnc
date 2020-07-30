import 'dart:ui';

import 'package:fit_fit/Subscription_page2.dart';
import 'package:fit_fit/avenirNext_style.dart';
import 'package:fit_fit/theme_color.dart';
import 'package:flutter/material.dart';

class SubscriptionPage1 extends StatelessWidget {
  Widget customText(String text, TextStyle textStyle) {
    return Text(text, style: textStyle);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Container(
        color: Color(0xE5E5E5),
        child: Column(
          children: <Widget>[
            Container(
              height: 56,
              width: size.width,
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: 21.0,
                      right: 21.0,
                      height: 24,
                      child: IconButton(
                          icon: Icon(Icons.clear),
                          color: Colors.black,
                          iconSize: 24,
                          onPressed: () {}))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 48, bottom: 16),
              child: Center(
                  child: Text('Your Personalized Training \nPlan Is Ready!',
                      textAlign: TextAlign.center,
                      style: AvenirNextStyle.h3
                          .copyWith(color: ThemeColor.black[80])),
                  ),
            ),
            Center(
                child: Text(
              "You'll start with Beginner 1.0",
              style: AvenirNextStyle.title.copyWith(color: ThemeColor.black[56],fontWeight: FontWeight.w500)
            )),
            Padding(
              padding: EdgeInsets.only(
                  left: 34.0, right: 34.0, top: 15.0, bottom: 18),
              child: Center(
                child: Container(
                  width: size.width * 0.9,
                  height: 200.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/FitFit_My Training_Subscription-1 Banner.jpg'),
                          fit: BoxFit.fill),
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  Column(
                    children: <Widget>[
                      Center(
                          child: Text(
                        '5 Workouts',
                        style: AvenirNextStyle.title2.copyWith(color: ThemeColor.black[80])
                      )),
                      Center(
                          child: Text(
                        'PER WEEK',
                        style: AvenirNextStyle.caption1.copyWith(color: ThemeColor.black[56],height: 2)
                      )),
                    ],
                  ),

                SizedBox(
                  width: 20.0,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Center(
                          child: Text(
                        'Avg 30 Mins',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            letterSpacing: 0.5,
                            fontStyle: FontStyle.normal,
                            fontFamily: 'AvenirNext',
                            fontWeight: FontWeight.w600),
                      )),
                      Center(
                          child: Text(
                        'PER WORKOUT',
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 12.0,
                          height: 2,
                          letterSpacing: 1,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'AvenirNext',
                        ),
                      )),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 102.0,
            ),
            Center(
                child: MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SubscriptionPage2()));
              },
              child: Container(
                width: size.width * 0.9,
                height: 50.0,
                child: Center(
                  child: Text(
                    'Choose your plan',
                    style: AvenirNextStyle.button2.copyWith(color: ThemeColor.white)
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(50.0),
                  gradient: LinearGradient(
                    colors: [Color(0xFF6D59F3), Color(0xFF503CDC)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1],
                  ),
                ),
              ),
            )),
            SizedBox(
              height: 20.0,
            )
          ],
        ),
      )),
    ));
  }
}

import 'dart:ui';

import 'package:fit_fit/avenirNext_style.dart';
import 'package:fit_fit/theme_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SubscriptionPage2 extends StatefulWidget {
  @override
  _SubscriptionPage2State createState() => _SubscriptionPage2State();
}

class _SubscriptionPage2State extends State<SubscriptionPage2> {
  Widget customContainer(String text, String image) {
    return Container(
        margin: EdgeInsets.fromLTRB(24, 16, 24, 0),
        height: 44,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Container(
            height: 20.0,
            width: 20.0,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(image))),
          ),
          SizedBox(
            width: 26,
          ),
          Flexible(
              child: Text(
            text,
            style: AvenirNextStyle.button2.copyWith(
                fontWeight: FontWeight.w500, color: ThemeColor.black[80]),
          ))
        ]));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: <Widget>[
          Container(
            width: size.width,
            height: 230.0,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage('assets/FitFit_Welcome Page.jpg'),
                  fit: BoxFit.cover),
              backgroundBlendMode: BlendMode.clear,
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  width: size.width,
                  height: 230.0,
                  color: Colors.black26,
                ),
                Positioned(
                  child: IconButton(
                      icon: Icon(
                        Icons.clear,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  left: size.width * 0.9,
                ),
                Positioned(
                    top: 176,
                    left: 16.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('START YOUR JOURNEY WITH A',
                            style: AvenirNextStyle.caption1
                                .copyWith(color: ThemeColor.white)),
                        Text('Smart Personal Training Plan',
                            style: AvenirNextStyle.h3
                                .copyWith(color: ThemeColor.white, height: 1.5))
                      ],
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16,right: 16,top: 16),
            child: Text(
              'We can\'t wait for you to try the new features we\'ve added since you\'ve been away.',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'AvenirNext',
                  fontSize: 14,
                  color: Colors.grey),
            ),
          ),
          customContainer(
            'Weekly personal training that is unique to you',
            'assets/1.png',
          ),
          customContainer(
            'Consist of resistance training & cardio',
            'assets/2.png',
          ),
          customContainer(
            'Automatic progression & adaptation',
            'assets/3.png',
          ),
          customContainer(
            'Training performance tracking',
            'assets/4.png',
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 16.0, bottom: 5),
              child: Container(
                  width: size.width * 0.8,
                  height: 80,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF6D59F3), width: 1),
                      borderRadius: BorderRadius.circular(50.0)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('1 Month • RM10.50/mo',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5,
                              fontFamily: 'AvenirNext',
                            )),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Billed monthly (Only RM3.33 per day)',
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'AvenirNext',
                          ),
                        )
                      ],
                    ),
                  ))),
          Container(
              width: size.width,
              child: Stack(
                children: <Widget>[
                  Padding(
                      padding:
                          EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                      child: Container(
                          width: size.width,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            border:
                                Border.all(color: Color(0xFF6D59F3), width: 1),
                            borderRadius: BorderRadius.circular(50.0),
                            gradient: LinearGradient(
                              colors: [Color(0xFF6D59F3), Color(0xFF503CDC)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 1],
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 30.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('3 Month • RM8.50/3mo ',
                                    style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.5,
                                      fontFamily: 'AvenirNext',
                                    )),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Billed monthly (Only RM3.33 per day)',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF).withOpacity(0.7),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'AvenirNext',
                                  ),
                                )
                              ],
                            ),
                          ))),
                  Positioned(
                    left: 312.0,
                    child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFFFF9900), Color(0xFFE98C00)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.0, 1],
                          ),
                          border: Border.all(color: Color(0xFFE98C00)),
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        height: 24,
                        width: 62,
                        child: Center(
                          child: Text(
                            '50% Off',
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'AvenirNext',
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFFFFFFF)),
                          ),
                        )),
                  ),
                ],
              )),
          Container(
              padding: EdgeInsets.only(top: 5),
              width: size.width,
              child: Stack(
                children: <Widget>[
                  Padding(
                      padding:
                          EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                      child: Container(
                          width: size.width,
                          height: 80,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xFF6D59F3), width: 1),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 30.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('12 Month • RM9.50/12mo',
                                    style: TextStyle(
                                      color: Color(0xFF212121),
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.5,
                                      fontFamily: 'AvenirNext',
                                    )),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Billed monthly (Only RM3.33 per day)',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'AvenirNext',
                                  ),
                                )
                              ],
                            ),
                          ))),
                  Positioned(
                    left: 312.0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFFEBD2),
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      height: 24,
                      width: 62,
                      child: Center(
                        child: Text(
                          '20% Off',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'AvenirNext',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFF9900)),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 16,
          ),
          Center(
              child: Text(
            'Restore Purchases ',
            style: TextStyle(
                fontFamily: 'AvenirNext',
                fontSize: 14.0,
                color: Colors.grey,
                decoration: TextDecoration.underline),
          )),
          Padding(
              padding: EdgeInsets.only(left: 16, right: 16.0, top: 32),
              child: RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: 'All subscriptions come with a ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'AvenirNext',
                        fontSize: 14,
                        color: Colors.grey),
                  ),
                  TextSpan(
                    text: '14-Day Free Trial',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'AvenirNext',
                        fontSize: 14,
                        color: Color(0xFF212121)),
                  ),
                  TextSpan(
                    text:
                        ' period, and will automatically convert to a paid subscription at the end of the trial period.',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'AvenirNext',
                        fontSize: 14,
                        color: Colors.grey),
                  )
                ]),
              )
              ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16.0, top: 32),
            child: Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                      text:
                          'If you have a promo code/ referral code, learn how to redeem it ',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'AvenirNext',
                          color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'here',
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontFamily: 'AvenirNext',
                                fontSize: 14.0,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()..onTap = () {})
                      ]),
                )
              ],
            ),
          ),
          Divider(),
          SizedBox(
            height: 16.0,
          ),
          Center(
              child: Text(
            'Subscription Terms',
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
              color: Colors.grey,
            ),
          )),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'The subscription automotically renews unless auto-renewal is turned off at least 24 hours prior to the end of the subscription period. The payment will be charged to your Google Play account at the confirmation of your purchase or within 24 hours prior to the end of the current trial/subscription period. You can manage your subscription & turn off auto-renew in your Google Play Store Subscriptions menu at any time - it will not affect current active subscription period. By purchasing the subscription via in-app subscription, you agree to the Google Play Store terms and conditions.',
              style: TextStyle(
                  color: Colors.grey, fontFamily: 'AvenirNext', fontSize: 14),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16.0, top: 32),
            child: Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                      text: 'By continuing, you agree to our ',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'AvenirNext',
                          color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'AvenirNext',
                                fontSize: 14.0,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()..onTap = () {}),
                        TextSpan(
                          text: ', ',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'AvenirNext',
                              color: Colors.grey),
                        ),
                        TextSpan(
                            text: 'Terms of Use',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'AvenirNext',
                                fontSize: 14.0,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()..onTap = () {}),
                        TextSpan(
                          text: ' and ',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'AvenirNext',
                              color: Colors.grey),
                        ),
                        TextSpan(
                            text: 'Billing Terms',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'AvenirNext',
                                fontSize: 14.0,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()..onTap = () {}),
                        TextSpan(
                          text: '.',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'AvenirNext',
                              color: Colors.grey),
                        ),
                      ]),
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          )
        ],
      ),
    ));
  }
}

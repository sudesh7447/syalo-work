// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen5.dart';
import 'package:page_transition/page_transition.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFffffff),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 35.0, right: 180, top: 35.0),
                  child: Text(
                    'Hi, Shreyas',
                    style: GoogleFonts.getFont('Montserrat').copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 30.0,
                        color: Color(0xFF000000)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 55),
                  child: Center(
                    child: Text(
                      'Let It Out!',
                      style: GoogleFonts.getFont('Montserrat').copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 35.0,
                          color: Color(0xFF000000)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 130, top: 9),
                  child: Text(
                    'Vent, and Connect',
                    style: GoogleFonts.getFont('Montserrat').copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 25.0,
                        color: Color(0xFF0081FF)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 70, top: 30),
                  child: Text(
                    'With A Kind Community',
                    style: GoogleFonts.getFont('Montserrat').copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 25.0,
                        color: Color(0xFF0081FF)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Image(
                    colorBlendMode: BlendMode.overlay,
                    image: AssetImage('Images/undraw_Partying_re_at7f 1.png'),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.leftToRight,
                            child: Screen5()));
                  },
                  child: Container(
                      width: 228.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF1067CD),
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF24488E),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Next',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w500,
                              fontSize: 25.0),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

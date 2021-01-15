import 'package:flutter/material.dart';

const String FontNameDefault = 'Montserrat';
const Large = 26.0;
const Medium = 20.0;
const Body = 16.0;
const color = const Color(0xff355c7d); // Second `const` is optional in assignments.

const Color TextColorDark = Colors.black;
const Color TextColorLight = Colors.white;
const Color TextColorAccent = Colors.red;
const Color TextColorFaint = Color.fromRGBO(125, 125, 125, 1.0);
const DefaultPaddingHorizontal = 12.0;


const AppBarTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w500,
  fontSize: Medium,
  color: Colors.white,
);
const TitleTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: Large,
  color: Colors.black,
);
const Body1TextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w200,
  fontSize: Body,
  color: Colors.black,
);
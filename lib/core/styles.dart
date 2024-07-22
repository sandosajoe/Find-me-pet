import 'package:flutter/material.dart';

abstract class Fonts {
  static const textStyle1 = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      // fontFamily: "Schyler",
      fontSize: 26);

  static const textStyle2 = TextStyle(
      //fontWeight: FontWeight.bold,
      color: Color.fromARGB(179, 0, 0, 0),
      //fontFamily: "Schyler",
      fontSize: 18);

  static const textStyle3 = TextStyle(
      //fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 0, 0, 0),
      //fontFamily: "Schyler",
      fontSize: 18,
      fontWeight: FontWeight.bold);

  static const dogName = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      // fontFamily: "Schyler",
      fontSize: 16);

  static const dogType = TextStyle(
      //fontWeight: FontWeight.bold,
      color: Color.fromARGB(179, 0, 0, 0),
      //fontFamily: "Schyler",
      fontSize: 18);

  static const dogAge = TextStyle(
      //fontWeight: FontWeight.bold,
      color: Color.fromARGB(167, 0, 0, 0),
      //fontFamily: "Schyler",
      fontSize: 13);
}

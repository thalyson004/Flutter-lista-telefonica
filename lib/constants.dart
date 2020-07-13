import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const TextStyle kContactNameStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

const kPhonePadding = EdgeInsets.symmetric(horizontal: 30, vertical: 3);

final RoundedRectangleBorder kContactBottomShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10.0),
);

final RoundedRectangleBorder kPhoneBottomShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(5.0),
);

Text myText(String text, double size) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      letterSpacing: 3,
    ),
  );
}

double kwidth(context) => MediaQuery.of(context).size.width;
double kheight(context) => MediaQuery.of(context).size.height;

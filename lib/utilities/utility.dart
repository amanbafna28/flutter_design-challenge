import 'package:flutter/material.dart';

class Resp {
  static screenWidth(double p, BuildContext context) {
    return MediaQuery.of(context).size.width * (p / 100);
  }	

  static screenHeight(double p, BuildContext context) {
    return MediaQuery.of(context).size.height * (p / 100);
  }
}


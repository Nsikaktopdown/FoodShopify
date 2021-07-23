import 'package:flutter/material.dart';

mixin Utils{

  static bool isLightMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light;
  }
   static double getDeviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
  static double getDeviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
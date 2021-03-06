import 'dart:ui';

import 'package:food_shopify/utils/utils.dart';
import 'package:flutter/material.dart';

class Pallet {
  static Color mainColor;
  static Color mainColorWithWhite;
  static Color mainColorWithBlack;
  static Color mainDarkColor;
  static Color mainLightColor;
  static Color mainLightColorWithBlack;
  static Color mainLightColorWithWhite;
  static Color mainShadowColor;
  static Color mainLightShadowColor;
  static Color mainDividerColor;
  static Color mainTextLightColor;
  static Color mainTextDarkColor;
  static Color editTextColor;
  static Color editTextDividerColor;
  static Color appBarColor;
  static Color backgroundColor;
  static Color cardBackground;
  static Color paymentOptionBackground;
  static Color newItemBackgroundColor;
  static Color processingOrderBackgroundColor;
  static Color readyBackgroundColor;
  static Color readyTextColor;
  static Color servedBackgroundColor;
  static Color orderBackgroundColor;
  static Color greyTextColor;
  static Color lightOrangeColor;

  // light theme colors
  static Color white = Color(0xFFFFFFFF);
  static Color colorSecondary = Color(0xFF555555);
  static Color colorPrimaryDark = Color(0xFF016FC8);
  static Color ltBlack = Colors.black;
  static Color textDark = Color(0xFFF8F8F7);
  static Color textLight = Color(0xFFB1B1B0);
  static Color divider = Color(0xFFE6EDF5);
  static Color yellow = Color(0xFFE2BE00);

  static void _loadLightColors() {
    mainColor = Color(0xFF1D1D1D);
    mainColorWithWhite = white;
    mainDarkColor = ltBlack;
    mainLightColor = Color(0xFFE5E5E5);
    mainDividerColor = divider;
    mainTextLightColor = Color(0xFF838383);
    mainTextDarkColor = Color(0xFF3A3A3A);
    editTextColor = Color(0xFFE0E7FF);
    editTextDividerColor = Color(0xFFE0E7FF);
    appBarColor = mainColor;
    backgroundColor = Color(0xFF000000);
    cardBackground = white;
    paymentOptionBackground = Color(0xFFFAFAFA);
    newItemBackgroundColor = Color(0xFFF5F5F5);
    processingOrderBackgroundColor = Color(0xFFFFFBE6);
    readyBackgroundColor = Color(0xFFEDFFFB);
    readyTextColor = Color(0xFF00916E);
    servedBackgroundColor = Color(0xFFFFF4ED);
    orderBackgroundColor = Color(0xFFF5F5F8);
    greyTextColor = Color(0xFF768091);
    lightOrangeColor = Color(0xFFFFF7F2);
  }

  static void _loadDarkColors() {
    mainColor = colorPrimaryDark;
    mainColorWithWhite = Color(0xFF343C48);
  }

  static void loadColor2(bool isLightMode) {
    if (isLightMode) {
      _loadLightColors();
    } else {
      _loadDarkColors();
    }
  }

  static void loadColor(BuildContext context) {
    if (Utils.isLightMode(context)) {
      _loadLightColors();
    } else {
      _loadDarkColors();
    }
  }
}

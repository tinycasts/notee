import 'package:flutter/material.dart';
import 'package:notee/themes/colors.dart';

class AppText {
  final AppColors colors;

  AppText({ this.colors });

  TextStyle get title => TextStyle(
    fontFamily: 'Manrope',
    fontWeight: FontWeight.bold,
    fontSize: 50,
    color: colors.blackHaze
  );
}

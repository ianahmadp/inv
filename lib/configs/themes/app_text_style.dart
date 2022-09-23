
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle {
  static TextStyle baseTextStyle = const TextStyle(
    color: AppColors.textPrimary,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.0,
    height: 1.5,
    fontFamily: 'Poppins',
  );

  static TextStyle superTiny = baseTextStyle.copyWith(fontSize: 9);
  static TextStyle tiny = baseTextStyle.copyWith(fontSize: 10);
  static TextStyle caption = baseTextStyle.copyWith(fontSize: 12);
  static TextStyle body = baseTextStyle.copyWith(fontSize: 14);
  static TextStyle body2 = baseTextStyle.copyWith(fontSize: 16);
  static TextStyle subtitle =
  baseTextStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w500);
  static TextStyle title1 =
  baseTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w500);
  static TextStyle title2 =
  baseTextStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w600);
  static TextStyle title3 =
  baseTextStyle.copyWith(fontSize: 32, fontWeight: FontWeight.bold);
  static TextStyle button = baseTextStyle.copyWith(
      fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.white);
  static TextStyle field =
  baseTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w500);
  static TextStyle hint = baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.hintTextColor);
  static TextStyle appBar =
  baseTextStyle.copyWith(fontSize: 18, fontWeight: FontWeight.bold);

  // navigation bar
  static TextStyle selectedNavBar =
  baseTextStyle.copyWith(fontSize: 11, fontWeight: FontWeight.bold);
  static TextStyle unselectedNavBar =
  baseTextStyle.copyWith(fontSize: 11, fontWeight: FontWeight.bold);
}

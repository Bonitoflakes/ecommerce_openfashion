import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle get title => const TextStyle(
        fontSize: 18,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 40 / 18,
        letterSpacing: 4,
      );

  static TextStyle get price => const TextStyle(
        fontSize: 15,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 24 / 15,
        letterSpacing: 0,
      );

  static TextStyle get bodyM => const TextStyle(
        fontSize: 14,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 24 / 14,
        letterSpacing: 0,
      );

  static TextStyle get subTitleS => const TextStyle(
        fontSize: 14,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 20 / 14,
        letterSpacing: 2,
      );

  static TextStyle get bodyS => const TextStyle(
        fontSize: 12,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 18 / 12,
        letterSpacing: 0,
      );

  static TextStyle get bodyL => const TextStyle(
        fontSize: 16,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
        letterSpacing: 0,
      );

  static TextStyle get subTitleM => const TextStyle(
        fontSize: 16,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
        letterSpacing: 2,
      );
}

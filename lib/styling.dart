import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color nord0 = const Color(0xFF2E3440);
  static const Color nord1 = const Color(0xFF3B4252);
  static const Color nord2 = const Color(0xFF434C5E);
  static const Color nord3 = const Color(0xFF4C566A);
  static const Color nord4 = const Color(0xFFD8DEE9);
  static const Color nord4_darken = const Color(0xFF63666B);
  static const Color nord5 = const Color(0xFFE5E9F0);
  static const Color nord6 = const Color(0xFFECEFF4);
  static const Color nord7 = const Color(0xFF8FBCBB);
  static const Color nord8 = const Color(0xFF88C0D0);
  static const Color nord9 = const Color(0xFF81A1C1);
  static const Color nord10 = const Color(0xFF5E81AC);
  static const Color nord11 = const Color(0xFFBF616A);
  static const Color nord12 = const Color(0xFFD08770);
  static const Color nord13 = const Color(0xFFEBCB8B);
  static const Color nord14 = const Color(0xFFA3BE8C);
  static const Color nord15 = const Color(0xFFB48EAD);

  static const TextTheme textTheme = TextTheme(
    display1: display1,
    headline: headline,
    title: title,
    subtitle: subtitle,
    body2: body2,
    body1: body1,
    caption: caption,
    button: button,
  );

  static const TextStyle display1 = TextStyle( // h4 -> display1
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: nord0,
  );

  static const TextStyle headline = TextStyle( // h5 -> headline
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: nord0,
  );

  static const TextStyle title = TextStyle( // h6 -> title
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: nord0,
  );

  static const TextStyle subtitle = TextStyle( // subtitle2 -> subtitle
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: nord1,
  );

  static const TextStyle body2 = TextStyle( // body1 -> body2
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: nord1,
  );

  static const TextStyle body1 = TextStyle( // body2 -> body1
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: nord1,
  );

  static const TextStyle caption = TextStyle( // Caption -> caption
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
    color: nord2, // was lightText
  );

  static const TextStyle button = TextStyle( // Button -> button
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: 0.2,
    color: nord6,
  );
}
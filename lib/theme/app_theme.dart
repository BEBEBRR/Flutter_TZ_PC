import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const String? fontFamily = null;

  //
  static const Color background = Color(0xFFF0F0F0);
  static const Color outerFrame = Color(0xFF1E1E1E);

  static const Color primaryRed = Color(0xFFC1272D);
  static const Color primaryRedDark = Color(0xFF8E1419);
  static const Color iconRedBright = Color(0xFFE0383F);

  static const Color hexBorderInactive = Color(0xFFEAD8D8);
  static const Color hexBorderInactiveSoft = Color(0xFFF1E4E4);

  static const Color navInactiveBorder = Color(0xFFE3E3E3);
  static const Color navInactiveText = Color(0xFF7A7A7A);

  static const Color textDark = Color(0xFF1F1F1F);
  static const Color logoGhost = Color(0xFFD9D9D9);

  static List<BoxShadow> hoverGlow = [
    BoxShadow(
      color: primaryRed.withOpacity(0.35),
      blurRadius: 28,
      spreadRadius: 2,
    ),
  ];

  static TextStyle get logoKaf => const TextStyle(
        fontFamily: fontFamily,
        fontSize: 40,
        fontWeight: FontWeight.w900,
        color: primaryRed,
        height: 0.95,
        letterSpacing: 0.5,
      );

  static TextStyle get logoStudio => const TextStyle(
        fontFamily: fontFamily,
        fontSize: 19,
        fontWeight: FontWeight.w700,
        color: Color(0xFF3A3A3A),
        letterSpacing: 2,
      );

  static TextStyle get navActive => const TextStyle(
        fontFamily: fontFamily,
        fontSize: 12.5,
        fontWeight: FontWeight.w700,
        color: Colors.white,
        letterSpacing: 0.3,
      );

  static TextStyle get navInactive => const TextStyle(
        fontFamily: fontFamily,
        fontSize: 12.5,
        fontWeight: FontWeight.w600,
        color: navInactiveText,
        letterSpacing: 0.3,
      );

  static TextStyle get centerTitle => const TextStyle(
        fontFamily: fontFamily,
        fontSize: 26,
        fontWeight: FontWeight.w800,
        color: textDark,
        height: 1.15,
      );

  static TextStyle get cardLabel => const TextStyle(
        fontFamily: fontFamily,
        fontSize: 13.5,
        fontWeight: FontWeight.w700,
        color: textDark,
        height: 1.3,
      );

  static TextStyle get popupTitle => const TextStyle(
        fontFamily: fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w800,
        color: Colors.white,
        height: 1.2,
      );

  static TextStyle get popupBullet => const TextStyle(
        fontFamily: fontFamily,
        fontSize: 12.5,
        fontWeight: FontWeight.w500,
        color: textDark,
        height: 1.35,
      );
}

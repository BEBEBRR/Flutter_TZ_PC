import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoMark extends StatelessWidget {
  const LogoMark({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      height: 110,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 14,
            top: 26,
            child: Opacity(
              opacity: 0.55,
              child: Text(
                'KAF\nSTUDIO',
                style: TextStyle(
                  fontFamily: AppTheme.fontFamily,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  height: 0.95,
                  color: AppTheme.logoGhost,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: SvgPicture.asset(
              'assets/icon_logo.svg',
              width: 150,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}

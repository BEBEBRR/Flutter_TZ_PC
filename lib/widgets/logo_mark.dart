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
      child: Align(
        alignment: Alignment.topLeft,
        child: SvgPicture.asset(
          'assets/icon_logo.svg',
          width: 150,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}

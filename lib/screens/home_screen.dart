import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../theme/app_theme.dart';
import '../widgets/hex_grid.dart';
import '../widgets/logo_mark.dart';
import '../widgets/top_nav_bar.dart';
import '../models/service_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const double canvasWidth = 1728;
  static const double canvasHeight = 950;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    final double lineWidth = screenWidth * 0.23;

    return Scaffold(
      backgroundColor: AppTheme.background,
      body: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: SvgPicture.asset('assets/line_top1.svg', width: lineWidth),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: SvgPicture.asset('assets/line_top2.svg', width: lineWidth),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: SvgPicture.asset('assets/line_top3.svg', width: lineWidth),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child:
                SvgPicture.asset('assets/line_bottom1.svg', width: lineWidth),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child:
                SvgPicture.asset('assets/line_bottom2.svg', width: lineWidth),
          ),
          Positioned(
            left: screenWidth * 0.045,
            top: screenHeight * 0.05,
            child: const SizedBox(
              width: 160,
              child: LogoMark(),
            ),
          ),
          Center(
            child: FittedBox(
              fit: BoxFit.contain,
              child: SizedBox(
                width: canvasWidth,
                height: canvasHeight,
                child: Container(
                  color: Colors.transparent,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Positioned(
                        top: 60,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: TopNavBar(),
                        ),
                      ),
                      const Positioned.fill(
                        child: Center(
                          child: HexGrid(services: mockServices),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

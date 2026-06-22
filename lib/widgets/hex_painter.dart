import 'package:flutter/material.dart';
import 'dart:math';

class HexagonPainter extends CustomPainter {
  final Color borderColor;
  final double borderWidth;
  final Color fillColor;

  HexagonPainter({
    required this.borderColor,
    required this.borderWidth,
    required this.fillColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paintFill = Paint()
      ..color = fillColor
      ..style = PaintingStyle.fill;

    final paintBorder = Paint()
      ..color = borderColor
      ..strokeWidth = borderWidth
      ..style = PaintingStyle.stroke
      ..strokeJoin = StrokeJoin.round;

    final path = Path();
    final center = Offset(size.width / 2, size.height / 2);

    final radius = size.width / 2;

    for (int i = 0; i < 6; i++) {
      double angle = (pi / 3) * i - pi / 2;
      double x = center.dx + radius * cos(angle);
      double y = center.dy + radius * sin(angle);

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();

    canvas.drawPath(path, paintFill);
    canvas.drawPath(path, paintBorder);
  }

  @override
  bool shouldRepaint(covariant HexagonPainter oldDelegate) {
    return oldDelegate.borderColor != borderColor ||
        oldDelegate.borderWidth != borderWidth;
  }
}

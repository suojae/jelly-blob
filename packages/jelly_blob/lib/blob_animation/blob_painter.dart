
import 'package:flutter/material.dart';

import 'blob_path.dart';

class BlobPainter extends CustomPainter {
  final double value;
  final Color startColor;
  final Color endColor;
  final Alignment gradientDirection;
  final int pointCount;
  final double amplitude;
  final double baseRadiusFactor;

  BlobPainter({
    required this.value,
    required this.startColor,
    required this.endColor,
    required this.gradientDirection,
    required this.pointCount,
    required this.amplitude,
    required this.baseRadiusFactor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;

    if (startColor.a == 0.0 && endColor.a == 0.0) {
      paint.color = Colors.transparent;
    } else {
      paint.shader = LinearGradient(
        begin: gradientDirection,
        end: -gradientDirection,
        colors: [startColor, endColor],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));
    }

    // 공통 generateBlobPath() 함수를 사용하여 blob 경로 생성
    final path = generateBlobPath(
      size: size,
      value: value,
      pointCount: pointCount,
      amplitude: amplitude,
      baseRadiusFactor: baseRadiusFactor,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant BlobPainter oldDelegate) {
    return oldDelegate.value != value ||
        oldDelegate.startColor != startColor ||
        oldDelegate.endColor != endColor ||
        oldDelegate.gradientDirection != gradientDirection ||
        oldDelegate.pointCount != pointCount ||
        oldDelegate.amplitude != amplitude ||
        oldDelegate.baseRadiusFactor != baseRadiusFactor;
  }
}


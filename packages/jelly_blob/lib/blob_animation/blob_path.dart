import 'dart:math';
import 'package:flutter/material.dart';

/// 공통 blob 경로 생성 함수
Path generateBlobPath({
  required Size size,
  required double value,
  required int pointCount,
  required double amplitude,
  required double baseRadiusFactor,
}) {
  final center = Offset(size.width / 2, size.height / 2);
  final double baseRadius = size.width * baseRadiusFactor;
  final double angleStep = (2 * pi) / pointCount;
  final List<Offset> points = [];

  for (int i = 0; i < pointCount; i++) {
    final angle = angleStep * i;
    final rawOffset = sin(value * 2 * pi + i) * amplitude;
    final currentRadius = baseRadius + rawOffset;
    final dx = center.dx + currentRadius * cos(angle);
    final dy = center.dy + currentRadius * sin(angle);
    points.add(Offset(dx, dy));
  }

  final path = Path();
  if (points.isNotEmpty) {
    path.moveTo(points.first.dx, points.first.dy);
    for (int i = 0; i < points.length; i++) {
      final currentPoint = points[i];
      final nextPoint = points[(i + 1) % points.length];
      final controlPoint = Offset(
        (currentPoint.dx + nextPoint.dx) / 2,
        (currentPoint.dy + nextPoint.dy) / 2,
      );
      path.quadraticBezierTo(
        currentPoint.dx,
        currentPoint.dy,
        controlPoint.dx,
        controlPoint.dy,
      );
    }
    if (points.length > 1) {
      final lastControlPoint = Offset(
        (points.first.dx + points[1].dx) / 2,
        (points.first.dy + points[1].dy) / 2,
      );
      path.quadraticBezierTo(
        points.first.dx,
        points.first.dy,
        lastControlPoint.dx,
        lastControlPoint.dy,
      );
    }
    path.close();
  }
  return path;
}

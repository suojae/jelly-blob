import 'package:flutter/material.dart';

import 'blob_path.dart';

class BlobClipper extends CustomClipper<Path> {
  final double animationValue;
  final int pointCount;
  final double amplitude;
  final double baseRadiusFactor;

  BlobClipper({
    required this.animationValue,
    required this.pointCount,
    required this.amplitude,
    required this.baseRadiusFactor,
  });

  @override
  Path getClip(Size size) {
    return generateBlobPath(
      size: size,
      value: animationValue,
      pointCount: pointCount,
      amplitude: amplitude,
      baseRadiusFactor: baseRadiusFactor,
    );
  }

  @override
  bool shouldReclip(covariant BlobClipper oldClipper) {
    return oldClipper.animationValue != animationValue ||
        oldClipper.pointCount != pointCount ||
        oldClipper.amplitude != amplitude ||
        oldClipper.baseRadiusFactor != baseRadiusFactor;
  }
}

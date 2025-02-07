import 'package:flutter/material.dart';

import 'blob_painter.dart';

class AnimatedBlob extends StatefulWidget {
  final Color startColor;
  final Color endColor;
  final Alignment gradientDirection;
  final Duration duration;
  final double width;
  final double height;

  const AnimatedBlob({
    super.key,
    required this.startColor,
    required this.endColor,
    this.gradientDirection = Alignment.topLeft,
    required this.duration,
    this.width = 300,
    this.height = 300,
  });

  @override
  State<AnimatedBlob> createState() => _AnimatedBlobState();
}

class _AnimatedBlobState extends State<AnimatedBlob>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final int _pointCount = 15;
  final double _amplitude = 5.0;
  final double _baseRadiusFactor = 0.35;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) => CustomPaint(
        painter: BlobPainter(
          value: _controller.value,
          startColor: widget.startColor,
          endColor: widget.endColor,
          gradientDirection: widget.gradientDirection,
          pointCount: _pointCount,
          amplitude: _amplitude,
          baseRadiusFactor: _baseRadiusFactor,
        ),
        size: Size(widget.width, widget.height),
      ),
    );
  }
}


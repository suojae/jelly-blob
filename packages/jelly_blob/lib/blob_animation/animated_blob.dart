import 'dart:ui';

import 'package:flutter/material.dart';
import 'blob_painter.dart';


final class AnimatedBlob extends StatefulWidget {
  final Color startColor;
  final Color endColor;
  final Alignment gradientDirection;

  const AnimatedBlob({
    super.key,
    required this.startColor,
    required this.endColor,
    required this.gradientDirection,
  });

  @override
  State<AnimatedBlob> createState() => _AnimatedBlobState();
}

class _AnimatedBlobState extends State<AnimatedBlob> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
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
        ),
        size: const Size(300, 300),
      ),
    );
  }
}

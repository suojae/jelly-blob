import 'package:flutter/material.dart';
import 'blob_cliper.dart';

class BlobContainer extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final double width;
  final double height;
  final int pointCount;
  final double amplitude;
  final double baseRadiusFactor;
  final Decoration? decoration;

  const BlobContainer({
    super.key,
    required this.child,
    required this.duration,
    this.width = 300,
    this.height = 300,
    this.pointCount = 12,
    this.amplitude = 5.0,
    this.baseRadiusFactor = 0.35,
    this.decoration,
  });

  @override
  State<BlobContainer> createState() => _BlobContainerState();
}

class _BlobContainerState extends State<BlobContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

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
      builder: (_, __) {
        return ClipPath(
          clipper: BlobClipper(
            animationValue: _controller.value,
            pointCount: widget.pointCount,
            amplitude: widget.amplitude,
            baseRadiusFactor: widget.baseRadiusFactor,
          ),
          child: Container(
            width: widget.width,
            height: widget.height,
            decoration: widget.decoration,
            child: widget.child,
          ),
        );
      },
    );
  }
}

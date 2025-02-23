import 'package:flutter/material.dart';

import 'blob_cliper.dart';
import 'blob_painter.dart';

class BlobButton extends StatefulWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Duration duration;
  final double width;
  final double height;
  final Color startColor;
  final Color endColor;
  final Alignment gradientDirection;
  final int pointCount;
  final double amplitude;
  final double baseRadiusFactor;

  const BlobButton({
    Key? key,
    required this.onPressed,
    required this.child,
    required this.duration,
    this.width = 200,
    this.height = 200,
    this.startColor = Colors.blue,
    this.endColor = Colors.purple,
    this.gradientDirection = Alignment.topLeft,
    this.pointCount = 12,
    this.amplitude = 5.0,
    this.baseRadiusFactor = 0.35,
  }) : super(key: key);

  @override
  _BlobButtonState createState() => _BlobButtonState();
}

class _BlobButtonState extends State<BlobButton>
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
    // AnimatedBuilder를 사용하여 blob 애니메이션 값에 따라 재빌드합니다.
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        // _BlobClipper에서 공통 generateBlobPath() 함수를 사용합니다.
        final blobClipper = BlobClipper(
          animationValue: _controller.value,
          pointCount: widget.pointCount,
          amplitude: widget.amplitude,
          baseRadiusFactor: widget.baseRadiusFactor,
        );
        return ClipPath(
          clipper: blobClipper,
          child: SizedBox(
            width: widget.width,
            height: widget.height,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Blob 배경 (AnimatedBlob과 동일한 애니메이션 효과)
                CustomPaint(
                  painter: BlobPainter(
                    value: _controller.value,
                    startColor: widget.startColor,
                    endColor: widget.endColor,
                    gradientDirection: widget.gradientDirection,
                    pointCount: widget.pointCount,
                    amplitude: widget.amplitude,
                    baseRadiusFactor: widget.baseRadiusFactor,
                  ),
                  size: Size(widget.width, widget.height),
                ),
                // 터치 효과를 위한 Material + InkWell
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: widget.onPressed,
                    splashColor: widget.endColor.withValues(alpha: 0.3),
                    child: Center(child: widget.child),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

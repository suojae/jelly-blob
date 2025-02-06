import 'package:flutter/material.dart';
import 'animated_blob.dart';

class BlobWrapper extends StatelessWidget {
  final Widget child;
  final Color startColor;
  final Color endColor;
  final Alignment gradientDirection;
  final Size blobSize;
  final Alignment blobAlignment;

  const BlobWrapper({
    super.key,
    required this.child,
    this.startColor = Colors.blue,
    this.endColor = Colors.purple,
    this.gradientDirection = Alignment.topLeft,
    this.blobSize = const Size(300, 300),
    this.blobAlignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Blob 애니메이션 배경
        Align(
          alignment: blobAlignment,
          child: SizedBox(
            width: blobSize.width,
            height: blobSize.height,
            child: AnimatedBlob(
              startColor: startColor,
              endColor: endColor,
              gradientDirection: gradientDirection,
            ),
          ),
        ),
        // child 위젯
        child,
      ],
    );
  }
}

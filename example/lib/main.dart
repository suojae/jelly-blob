import 'package:flutter/material.dart';
import 'package:jelly_blob/blob_animation/blob_wraper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BlobWrapper(
          startColor: Colors.orange,
          endColor: Colors.red,
          gradientDirection: Alignment.topRight,
          blobSize: const Size(400, 400),
          child: Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Blob Effect Button'),
            ),
          ),
        ),
      ),
    );
  }
}

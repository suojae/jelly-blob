import 'package:flutter/material.dart';
import 'package:jelly_blob/blob_animation/blob_contaienr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blob Container Showcase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BlobShowcaseScreen(),
    );
  }
}

class BlobShowcaseScreen extends StatelessWidget {
  const BlobShowcaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gradientDecoration = BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.blue, Colors.purple],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    );

    final imageDecoration = BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/sample_image.jpg'),
        fit: BoxFit.cover,
      ),
    );

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlobContainer(
                duration: const Duration(seconds: 3),
                width: 300,
                height: 300,
                decoration: gradientDecoration,
                detailLevel: 10,
                amplitude: 13,
                child: const Center(
                  child: Text(
                    'Hello, Blob!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // 이미지 배경과 아이콘을 포함한 BlobContainer
              BlobContainer(
                duration: const Duration(seconds: 4),
                width: 300,
                height: 300,
                decoration: imageDecoration,
                detailLevel: 8,
                amplitude: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

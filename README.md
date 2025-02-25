
# Jelly Blob

<image src="https://github.com/user-attachments/assets/762d4026-fb11-4219-86fa-81cb39553ee8" width="400">

<br/>

<br/>

Jelly Blob is a dynamic, customizable Flutter library that allows you to seamlessly integrate animated blob effects into your applications. With its polymorphic design, you can apply stunning blob animations not only to color backgrounds but also to images, gradients, or any custom widget.

<br/>

## Features

<img src="https://github.com/user-attachments/assets/829d3295-670a-4cd7-85d0-996f60dc420e" width="200">

<br/>
<br/>


- **Dynamic Blob Animations:** Enjoy smooth, continuously evolving blob shapes.
- **Polymorphic Design:** Easily wrap any widget with blob effects—be it a color, gradient, image, or custom layout.
- **Highly Customizable:** Configure animation duration, blob size, **detail level (smoothness), amplitude (wave effect)**, and more.
- **Developer Friendly:** Comprehensive documentation, detailed API examples, and unit tests ensure a hassle-free integration.

<br/>


## Installation

Add Jelly Blob to your `pubspec.yaml`:

```yaml
dependencies:
  jelly_blob: ^1.0.1
```

Then run:

```bash
flutter pub get
```

<br/>

## Usage

### Basic Animated Blob

```dart
import 'package:flutter/material.dart';
import 'package:jelly_blob/animated_blob.dart';

class ExampleAnimatedBlob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBlob(
        startColor: Colors.blue,
        endColor: Colors.purple,
        duration: Duration(seconds: 3),
        width: 300,
        height: 300,
      ),
    );
  }
}
```

### Blob Container with Custom Content

```dart
import 'package:flutter/material.dart';
import 'package:jelly_blob/blob_container.dart';

class ExampleBlobContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlobContainer(
      duration: Duration(seconds: 4),
      width: 300,
      height: 300,
      detailLevel: 15, // More control points for smoother blob shape
      amplitude: 12.0, // Higher amplitude for a more dynamic effect
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Text(
          'Hello, Blob!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
```

<br/>

## Contributing

Contributions are welcome! Please review our [Contributing Guidelines](CONTRIBUTING.md) to get started. We appreciate your help in making Jelly Blob even better.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

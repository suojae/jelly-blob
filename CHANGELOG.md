## 1.0.2
* fix readme file

## 1.0.1

* **Enhanced Customization & API Improvements**
  * Renamed `pointCount` → `detailLevel` for better readability and clarity.
  * Exposed `detailLevel` and `amplitude` as fully customizable parameters.
  * Improved default values for better UX:
    * `detailLevel = 12` (balanced blob complexity)
    * `amplitude = 10.0` (natural distortion effect)
  * Maintains full support for images, gradients, and custom widgets inside the blob.

## 1.0.0

* **Initial Stable Release**
    * **Blob Widgets:** Introduces `AnimatedBlob`, `BlobButton`, and `BlobContainer` to apply dynamic blob effects.
    * **Polymorphic Design:** Not limited to color backgrounds—easily integrate images, gradients, or any custom widget.
    * **Customizable Parameters:** Fully configurable options for animation duration, size, amplitude, point count, etc.
    * **Modular Architecture:** Organized using a Melos monorepo setup, ensuring maintainability and ease of contribution.
    * **Comprehensive Documentation:** Includes usage examples, detailed API documentation, and unit tests for reliability.

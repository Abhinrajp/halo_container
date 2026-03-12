# halo_container

A sleek, customizable Flutter container featuring a gradient border effect with transparent background. Perfect for highlighting premium UI elements or buttons.

## Features

* **Custom Gradients:** Support for multi-color linear gradients on the border.
* **Adjustable Border:** Control `gradientWidth` and `borderRadius` with ease.
* **Interactive:** Built-in `onTap` support for quick button implementation.
* **Glassmorphism Ready:** Designed to work beautifully with semi-transparent backgrounds.

## Usage

```dart
HaloContainer(
  height: 60,
  borderRadius: 12,
  gradientWidth: 2,
  onTap: () => print("Tapped!"),
  gradient: [Colors.blue, Colors.purple],
  child: Center(child: Text("Halo Button")),
)
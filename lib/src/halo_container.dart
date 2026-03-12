import 'package:flutter/material.dart';

class HaloContainer extends StatelessWidget {
  final VoidCallback? onTap;
  final List<Color>? gradient;
  final double? gradientWidth;
  final double? borderRadius;
  final double? height;
  final Color? backgroundColor;
  final Widget? child;

  const HaloContainer({
    super.key,
    this.onTap,
    this.gradient = const [
      Color(0xFFFFBC04),
      Color(0xFFF7931E),
      Color(0xFFF2D161),
      Color(0xFFF6A32F),
      Color(0xFFF5B240),
      Color(0xFFF7931E),
    ],
    this.gradientWidth = 2,
    this.borderRadius = 6,
    this.height = 60,
    this.backgroundColor = const Color.fromRGBO(255, 235, 175, 0.2),
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: GradientBorderPainter(
        gradient: gradient!,
        gradientWidth: gradientWidth!,
        borderRadius: borderRadius!,
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius! + 2),
          ),
          child: child,
        ),
      ),
    );
  }
}

class GradientBorderPainter extends CustomPainter {
  final List<Color> gradient;
  final double gradientWidth;
  final double borderRadius;

  GradientBorderPainter({
    super.repaint,
    required this.gradient,
    required this.gradientWidth,
    required this.borderRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;

    final paint = Paint()
      ..shader = LinearGradient(colors: gradient).createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = gradientWidth;

    final rrect = RRect.fromRectAndRadius(
      rect.deflate(1),
      Radius.circular(borderRadius),
    );

    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

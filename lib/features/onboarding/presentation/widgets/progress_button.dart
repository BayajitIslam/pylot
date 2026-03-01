import 'dart:math';
import 'package:flutter/material.dart';
import 'package:pylot/core/theme/app_pallete.dart';

class ProgressButton extends StatelessWidget {
  final double progress;
  final VoidCallback onTap;

  const ProgressButton({
    super.key,
    required this.progress,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 72,
        height: 72,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Arc progress ring
            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: progress),
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              builder: (_, value, __) => CustomPaint(
                size: const Size(72, 72),
                painter: _ArcPainter(progress: value),
              ),
            ),
            // Inner filled circle
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppPallete.primaryColor,
                boxShadow: [
                  BoxShadow(
                    color: AppPallete.primaryColor.withOpacity(0.4),
                    blurRadius: 16,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Icon(
                Icons.arrow_forward_rounded,
                color: AppPallete.whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ArcPainter extends CustomPainter {
  final double progress;

  _ArcPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    const radius = 32.0;
    const strokeWidth = 4.0;
    const startAngle = -pi / 2; // Start from top

    // Track ring
    final trackPaint = Paint()
      ..color = const Color(0xFFDBEAFE)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius, trackPaint);

    // Progress arc
    if (progress > 0) {
      final progressPaint = Paint()
        ..color = const Color(0xFF3B82F6)
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
        ..strokeCap = StrokeCap.round;

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        2 * pi * progress,
        false,
        progressPaint,
      );
    }
  }

  @override
  bool shouldRepaint(_ArcPainter old) => old.progress != progress;
}

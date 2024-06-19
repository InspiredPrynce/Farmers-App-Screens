import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'kThemeData.dart';

class DottedDivider extends StatelessWidget {
    final int width;
    final double opacity;

    const DottedDivider({super.key, required this.width, required this.opacity});

    @override
    Widget build(BuildContext context) {
        return CustomPaint(
            size: const Size(double.infinity, 20),
            painter: DottedLinePainter(width, opacity),
        );
    }
}

class DottedLinePainter extends CustomPainter {
    final int width;
    final double opacity;

    DottedLinePainter(this.width, this.opacity);

    final settingsBox = Hive.box('settings');

    @override
    void paint(Canvas canvas, Size size) {
        bool isDarkMode = settingsBox.get('isDarkMode', defaultValue: true);
        late Color color = isDarkMode ? secondaryColor : primaryColor;

        var paint = Paint()
            ..color = color.withOpacity(opacity)
            ..strokeWidth = 2
            ..style = PaintingStyle.stroke;

        var maxWidth = size.width;
        var dashWidth = width.toDouble();
        var dashSpace = 3.0;
        double startX = 0;

        while (startX < maxWidth) {
            canvas.drawLine(Offset(startX, size.height / 2), Offset(startX + dashWidth, size.height / 2), paint);
            startX += dashWidth + dashSpace;
        }
    }

    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
        return false;
    }
}
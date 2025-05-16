import 'package:flutter/material.dart';

class TextBeforDiscount extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Color lineColor;
  final double lineThickness;

  const TextBeforDiscount({super.key, 
    required this.text,
    this.style = const TextStyle(),
    this.lineColor = Colors.red,
    this.lineThickness = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _SlantedLinePainter(
        text: text,
        style: style,
        lineColor: lineColor,
        lineThickness: lineThickness,
      ),
      child:  Text(text, style: style),
    );
  }
}

class _SlantedLinePainter extends CustomPainter {
  final String text;
  final TextStyle style;
  final Color lineColor;
  final double lineThickness;

  _SlantedLinePainter({
    required this.text,
    required this.style,
    required this.lineColor,
    required this.lineThickness,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = lineColor
      ..strokeWidth = lineThickness
      ..style = PaintingStyle.stroke;

 
    canvas.drawLine(
      Offset(size.width, 3), 
      const Offset(2, 15), 
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
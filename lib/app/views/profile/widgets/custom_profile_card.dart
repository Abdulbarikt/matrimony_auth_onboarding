import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(width * 0.2064917, height * 0.1418000);
    path_0.lineTo(width * 0.9563833, height * 0.1414571);
    path_0.lineTo(width * 0.9567083, height * 0.6465857);
    path_0.lineTo(width * 0.4171250, height * 0.6449429);
    path_0.lineTo(width * 0.4159000, height * 0.5004714);
    path_0.lineTo(width * 0.2920417, height * 0.5000286);
    path_0.lineTo(width * 0.2914750, height * 0.6419857);
    path_0.lineTo(width * 0.2080667, height * 0.6419429);
    path_0.lineTo(width * 0.2064917, height * 0.1418000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

class Example1 extends StatelessWidget {
  const Example1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uzb flag'),
      ),
      body: Center(
        child: Container(
          height: 320,
          width: double.infinity,
          color: Colors.red,
          child: CustomPaint(
            painter: MyPainter(),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var centerBlue = Offset(size.width / 8, size.height / 6);
    var radius = 40.0;
    var paintBlue = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    var centerRed = Offset(size.width / 8 + 20, size.height / 6);
    var paintRed = Paint()
      ..color = Colors.lightBlueAccent
      ..style = PaintingStyle.fill;

    double rectHeight = 100;
    final paint = Paint()..color = Colors.lightBlueAccent;
    final paint1 = Paint()..color = Colors.white;
    final paint2 = Paint()..color = Colors.green;
    final starPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 2;
    canvas.drawRect(
        Rect.fromCenter(
            center: Offset(size.width / 2, rectHeight / 2), width: size.width, height: rectHeight),
        paint);
    canvas.drawRect(
        Rect.fromCenter(
            center: Offset(size.width / 2, size.height / 2), width: size.width, height: rectHeight),
        paint1);
    canvas.drawRect(
        Rect.fromCenter(
            center: Offset(size.width / 2, size.height - rectHeight / 2),
            width: size.width,
            height: rectHeight),
        paint2);
    canvas.drawCircle(centerBlue, radius, paintBlue);
    canvas.drawCircle(centerRed, radius, paintRed);
    for (var iy = 0; iy < 3; iy++) {
      for (var jx = 2 - iy; jx < 5; jx++) {
        final starPath = Path()
          ..moveTo((50 / 10) + jx * 30 + 80, (0 / 10) + iy * 30 + 10)
          ..lineTo((22.5 / 10) + jx * 30 + 80, (100 / 10) + iy * 30 + 10)
          ..lineTo((100 / 10) + jx * 30 + 80, (37.5 / 10) + iy * 30 + 10)
          ..lineTo((0 / 10) + jx * 30 + 80, (37.5 / 10) + iy * 30 + 10)
          ..lineTo((77.5 / 10) + jx * 30 + 80, (100 / 10) + iy * 30 + 10)
          ..lineTo((50 / 10) + jx * 30 + 80, 0 + iy * 30 + 10);
        canvas.drawPath(starPath, starPaint);
        starPath.close();
      }
    }
    final moonPaint = Paint()..color = Colors.white;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

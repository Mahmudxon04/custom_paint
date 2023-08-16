import 'dart:math';

import 'package:flutter/material.dart';

class Emoji4 extends StatelessWidget {
  const Emoji4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bad'),
      ),
      body: Center(
          child: CustomPaint(
        painter: MyPainter(),
      )),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 10
      ..color = Colors.orange
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 100, paint);
    paint.style = PaintingStyle.stroke;

    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(size.width / 2 + 60, size.height / 2 - 50), width: 50, height: 50),
        -3 * pi / 2,
        pi / 2,
        false,
        paint);
    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(size.width / 2 - 60, size.height / 2 - 50), width: 50, height: 50),
        0,
        pi / 2,
        false,
        paint);
    // canvas.drawCircle(Offset(size.width / 2 - 40, size.height / 2 - 40), 15, paint);
    // canvas.drawCircle(Offset(size.width / 2 + 40, size.height / 2 - 40), 15, paint);
    paint.style = PaintingStyle.stroke;
    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(size.width / 2, size.height / 2 + 50), width: 100, height: 80),
        0,
        -pi,
        false,
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

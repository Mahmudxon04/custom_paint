import 'dart:math';

import 'package:flutter/material.dart';

class Emoji5 extends StatelessWidget {
  const Emoji5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sad'),
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
      ..color = Colors.red
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 100, paint);
    paint.style = PaintingStyle.fill;
    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(size.width / 2 - 40, size.height / 2 - 30), width: 50, height: 50),
        pi * 270 / 360,
        pi,
        false,
        paint);
    // canvas.drawCircle(Offset(size.width / 2 + 40, size.height / 2 - 40), 15, paint);
    paint.style = PaintingStyle.fill;
    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(size.width / 2, size.height / 2 + 40), width: 70, height: 70),
        0,
        -pi,
        true,
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

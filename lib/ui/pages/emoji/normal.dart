import 'dart:math';

import 'package:flutter/material.dart';

class Emoji3 extends StatelessWidget {
  const Emoji3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('normal'),
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
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 100, paint);
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.width / 2 - 40, size.height / 2 - 40), 15, paint);
    canvas.drawCircle(Offset(size.width / 2 + 40, size.height / 2 - 40), 15, paint);
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

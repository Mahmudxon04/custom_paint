import 'dart:math';

import 'package:flutter/material.dart';

class Emoji2 extends StatelessWidget {
  const Emoji2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('good'),
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
      ..color = Colors.blue
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 100, paint);
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.width / 2 - 40, size.height / 2 - 40), 15, paint);
    canvas.drawCircle(Offset(size.width / 2 + 40, size.height / 2 - 40), 15, paint);
    paint.style = PaintingStyle.stroke;
    canvas.drawLine(Offset(size.width / 2 - 40, size.height / 2 + 30),
        Offset(size.width / 2 + 40, size.height / 2 + 30), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

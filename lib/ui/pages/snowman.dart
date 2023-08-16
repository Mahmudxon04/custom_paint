import 'package:flutter/material.dart';

class Example2 extends StatelessWidget {
  const Example2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snowman'),
      ),
      body: CustomPaint(
        painter: MyPainter(),
        child: Container(),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    canvas.drawCircle(Offset(size.width / 2, size.height * 3.5 / 10), 70, paint);
    canvas.drawCircle(Offset(size.width / 2, size.height * 5.5 / 10), 100, paint);
    canvas.drawCircle(Offset(size.width / 2, size.height * 8 / 10), 120, paint);
    paint.strokeWidth = 2;
    // body
    canvas.drawCircle(Offset(size.width * 5.2 / 10, size.height * 5 / 10), 5, paint);
    canvas.drawCircle(Offset(size.width * 5.2 / 10, size.height * 5.3 / 10), 5, paint);
    canvas.drawCircle(Offset(size.width * 5.2 / 10, size.height * 5.6 / 10), 5, paint);
    // head
    canvas.drawCircle(Offset(size.width * 5.8 / 10, size.height * 3.2 / 10), 5, paint);
    canvas.drawCircle(Offset(size.width * 4.6 / 10, size.height * 3.2 / 10), 5, paint);
    // smile
    canvas.drawCircle(Offset(size.width * 4.6 / 10, size.height * 3.8 / 10), 5, paint);
    canvas.drawCircle(Offset(size.width * 4.9 / 10, size.height * 3.9 / 10), 5, paint);
    canvas.drawCircle(Offset(size.width * 5.3 / 10, size.height * 3.9 / 10), 5, paint);
    canvas.drawCircle(Offset(size.width * 5.6 / 10, size.height * 3.8 / 10), 5, paint);
    // nose
    final nosePath = Path()
      ..moveTo(size.width * 5.2 / 10, size.height * 3.4 / 10)
      ..lineTo(size.width * 7.6 / 10, size.height * 3.3 / 10)
      ..lineTo(size.width * 5.2 / 10, size.height * 3.5 / 10)
      ..lineTo(size.width * 5.2 / 10, size.height * 3.4 / 10);
    canvas.drawPath(nosePath, paint);
    final leftArm = Path()
      ..moveTo(size.width * 7.2 / 10, size.height * 4.8 / 10)
      ..lineTo(size.width * 8.5 / 10, size.height * 4.3 / 10)
      ..lineTo(size.width * 8.7 / 10, size.height * 4 / 10)
      ..lineTo(size.width * 8.85 / 10, size.height * 4.05 / 10)
      ..lineTo(size.width * 8.7 / 10, size.height * 4.3 / 10)
      ..lineTo(size.width * 9 / 10, size.height * 4.15 / 10)
      ..lineTo(size.width * 9.1 / 10, size.height * 4.2 / 10)
      ..lineTo(size.width * 8.74 / 10, size.height * 4.38 / 10)
      ..lineTo(size.width * 9.16 / 10, size.height * 4.46 / 10)
      ..lineTo(size.width * 9.1 / 10, size.height * 4.55 / 10)
      ..lineTo(size.width * 8.65 / 10, size.height * 4.46 / 10)
      ..lineTo(size.width * 7.32 / 10, size.height * 4.97 / 10);
    print('ok');
    paint.strokeWidth = 5;
    canvas.drawPath(leftArm, paint);
    final rightArm = Path()
      ..moveTo(size.width * 2.7 / 10, size.height * 4.8 / 10)
      ..lineTo(size.width * 1 / 10, size.height * 4 / 10)
      ..lineTo(size.width * 0.9 / 10, size.height * 3.7 / 10)
      ..lineTo(size.width * 0.7 / 10, size.height * 3.72 / 10)
      ..lineTo(size.width * 0.78 / 10, size.height * 4.05 / 10)
      ..lineTo(size.width * 0.38 / 10, size.height * 3.9 / 10)
      ..lineTo(size.width * 0.3 / 10, size.height * 4 / 10)
      ..lineTo(size.width * 0.77 / 10, size.height * 4.2 / 10)
      ..lineTo(size.width * 0.35 / 10, size.height * 4.3 / 10)
      ..lineTo(size.width * 0.35 / 10, size.height * 4.4 / 10)
      ..lineTo(size.width * 0.9 / 10, size.height * 4.3 / 10)
      ..lineTo(size.width * 2.6 / 10, size.height * 5.08 / 10);
    // hat

    print('ok');

    canvas.drawPath(rightArm, paint);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 5 / 10, size.height * 2.6 / 10), width: 150, height: 40),
        paint);

    final hatPath = Path()
      ..moveTo(size.width * 4 / 10, size.height * 2.6 / 10)
      ..lineTo(size.width * 4.1 / 10, size.height * 1.4 / 10)
      ..lineTo(size.width * 6 / 10, size.height * 1.4 / 10)
      ..lineTo(size.width * 6 / 10, size.height * 2.6 / 10)
      ..lineTo(size.width * 4 / 10, size.height * 2.6 / 10);
    canvas.drawPath(hatPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

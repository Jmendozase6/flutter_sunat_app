import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunat_app/core/constants/colors.dart';

class WaveBottom extends StatelessWidget {
  const WaveBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWaveBottomPainter(),
      ),
    );
  }
}

class _HeaderWaveBottomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint();

    // Propiedades
    paint.color = primaryColor;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();

    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.30);

    path.quadraticBezierTo(
        size.width * 0.20, // Donde empieza
        size.height * 0.10, // Donde se rompe
        size.width * 0.50, // Hasta donde llega del ancho de la pantalla
        size.height * 0.25 // La altura en la que termina
        );

    path.quadraticBezierTo(
        size.width * 0.80, // Donde empieza
        size.height * 0.40, // Donde se rompe
        size.width, // Hasta donde llega del ancho de la pantalla
        size.height * 0.25 // La altura en la que termina
        );

    path.lineTo(size.width, size.height);
    // path.quadraticBezierTo(x1, y1, x2, y2)

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

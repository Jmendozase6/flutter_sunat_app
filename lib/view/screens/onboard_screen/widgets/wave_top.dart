import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunat_app/core/constants/colors.dart';

class HeaderWave extends StatelessWidget {
  const HeaderWave({super.key});

  static const String routeName = '/wave';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWavePainter(),
      ),
    );
  }
}

class _HeaderWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint();

    // Propiedades
    paint.color = primaryColor;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();

    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.25, // Donde empieza
        size.height * 0.30, // Donde se rompe
        size.width * 0.5, // Hasta donde llega del ancho de la pantalla
        size.height * 0.25 // La altura en la que termina
        );
    path.quadraticBezierTo(
        size.width * 0.75, // Donde empieza
        size.height * 0.20, // Donde se rompe
        size.width, // Hasta donde llega del ancho de la pantalla
        size.height * 0.25 // La altura en la que termina
        );

    path.lineTo(size.width, 0);
    // path.quadraticBezierTo(x1, y1, x2, y2)

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

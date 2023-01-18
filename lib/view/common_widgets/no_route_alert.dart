import 'package:flutter/material.dart';

AlertDialog alert = AlertDialog(
  title: const Text('Ruta en construcción'),
  content: const Text('Aún no se crea esta página, ando trabajando en eso xd'),
  actions: [
    continueButton,
  ],
);

Widget continueButton = TextButton(
  child: const Text('Continuar'),
  onPressed: () {},
);

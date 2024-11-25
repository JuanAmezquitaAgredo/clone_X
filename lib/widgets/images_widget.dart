import 'package:flutter/material.dart';

class XLogoWidget extends StatelessWidget {
  final double size;

  const XLogoWidget({super.key, this.size = 45.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        color: Colors.transparent, // Fondo transparente
        shape: BoxShape.circle, // Forma circular
      ),
      alignment: Alignment.center,
      child: Image.asset(
        'assets/images/xlogo.png', // Ruta de la imagen
        width: size * 0.8, // Ajustar tamaño
        height: size * 0.8,
        fit: BoxFit.contain,
      ),
    );
  }
}

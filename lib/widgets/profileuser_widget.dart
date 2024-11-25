import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String username;
  final double size;

  const UserAvatar({
    super.key,
    required this.username,
    this.size = 50.0, // Tamaño predeterminado de la bolita
  });

  @override
  Widget build(BuildContext context) {
    // Obtener la inicial del nombre de usuario
    String initial = username.isNotEmpty ? username[0].toUpperCase() : '?';

    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(44, 137, 123, 1), // Color de fondo
        shape: BoxShape.circle, // Forma circular
      ),
      alignment: Alignment.center,
      child: Text(
        initial,
        style: TextStyle(
          fontSize: size * 0.5, // Tamaño del texto relativo al tamaño del círculo
          fontWeight: FontWeight.bold,
          color: Colors.white,
          decoration: TextDecoration.none // Color de la inicial
        ),
      ),
    );
  }
}

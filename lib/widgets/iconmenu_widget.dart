import 'package:flutter/material.dart';

class IconMenuWidget extends StatefulWidget {
  final IconData icon;
  final VoidCallback? onPress;

  const IconMenuWidget({
    super.key,
    required this.icon,
    this.onPress,
  });

  @override
  State<IconMenuWidget> createState() => _IconMenuWidgetState();
}

class _IconMenuWidgetState extends State<IconMenuWidget> {
  bool _isPressed = false; // Estado para saber si está presionado

  void _toggleIconStyle() {
    setState(() {
      _isPressed = !_isPressed; // Cambia el estado al presionar
    });
    if (widget.onPress != null) {
      widget.onPress!(); // Llama a la función onPress si está definida
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleIconStyle,
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle, // Asegura un botón circular
          color: Colors.transparent, // Fondo completamente transparente
        ),
        padding: const EdgeInsets.all(10), // Espaciado interno
        child: Icon(
          widget.icon,
          size: _isPressed ? 35 : 30, // Simula efecto de negrita con tamaño
          color: _isPressed ? Colors.black : const Color.fromARGB(255, 27, 27, 27), // Cambia color al presionar
        ),
      ),
    );
  }
}

import 'package:cpoy_x_app/widgets/cart_widget.dart';
import 'package:flutter/material.dart';

class BodySection extends StatelessWidget {
  const BodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Ancho de la sección
      height: 540, // Altura de la sección
      child: Container(
        color: Colors.white,
        child: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: 10, // Número de tarjetas a mostrar
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: CartWidget(), 
            );
          },
        ),
      ),
    );
  }
}

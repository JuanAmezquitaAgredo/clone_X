import 'package:cpoy_x_app/widgets/iconmenu_widget.dart';
import 'package:flutter/material.dart';

class ButtonsappbarSection extends StatefulWidget {
  const ButtonsappbarSection({super.key});

  @override
  State<ButtonsappbarSection> createState() => _ButtonsappbarSectionState();
}

class _ButtonsappbarSectionState extends State<ButtonsappbarSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const SizedBox(
        width: double.infinity,
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconMenuWidget(icon: Icons.home_filled), // Casa
            IconMenuWidget(icon: Icons.search), // Lupa
            IconMenuWidget(
                icon: Icons
                    .crop_square), // Cuadro con diagonal (puedes personalizarlo)
            IconMenuWidget(icon: Icons.people_outlined), // Dos personitas
            IconMenuWidget(icon: Icons.notifications), // Campana
            IconMenuWidget(icon: Icons.mail), // Sobre
          ],
        ),
      ),
    );
  }
}

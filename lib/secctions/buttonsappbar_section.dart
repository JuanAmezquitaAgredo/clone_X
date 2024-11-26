import 'package:flutter/material.dart';

class ButtonsappbarSection extends StatefulWidget {
  const ButtonsappbarSection({super.key});

  @override
  State<ButtonsappbarSection> createState() => _ButtonsappbarSectionState();
}

class _ButtonsappbarSectionState extends State<ButtonsappbarSection> {
  int _selectedIndex = 0; // Control del índice seleccionado

  void _onIconPressed(int index) {
    setState(() {
      _selectedIndex = index; // Actualiza el índice seleccionado
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        width: double.infinity,
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildIconButton(Icons.home_filled, 0), 
            _buildIconButton(Icons.search, 1), 
            _buildIconButton(Icons.crop_square, 2), 
            _buildIconButton(Icons.people_outlined, 3), 
            _buildIconButton(Icons.notifications, 4), 
            _buildIconButton(Icons.mail, 5), 
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, int index) {
    final bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onIconPressed(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        width: 40, // Cambia el tamaño si está seleccionado
        height: 40,
        child: Icon(
          icon,
          color: isSelected ? const Color.fromARGB(255, 0, 0, 0) : Colors.grey, // Cambia el color
          size: isSelected ? 35 : 30, // Tamaño dinámico
        ),
      ),
    );
  }
}

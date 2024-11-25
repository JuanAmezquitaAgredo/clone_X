import 'package:cpoy_x_app/widgets/images_widget.dart';
import 'package:cpoy_x_app/widgets/profileuser_widget.dart';
import 'package:flutter/material.dart';

class AppBarComp extends StatefulWidget {
  const AppBarComp({super.key});

  @override
  State<AppBarComp> createState() => _AppBarCompState();
}

class _AppBarCompState extends State<AppBarComp> {
  void onPressed() {
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        width: double.infinity,
        height: 130, // Aumento la altura para que quepa todo el contenido
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const UserAvatar(
                    username: 'Juan',
                    size: 40,
                  ),
                  const XLogoWidget(),
                  OutlinedButton(
                    onPressed: onPressed,
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 1)
                    ),
                    child: const Text(
                      'Upgrade',
                      style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1), fontSize: 12,),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // "For you" y "Following" con líneas debajo
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text(
                      'For you',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 43, 43, 43),
                        decoration: TextDecoration.none, // Quitar subrayado
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      width: 55,
                      height: 4,
                      color: const Color.fromARGB(255, 28, 123, 255), // Línea gris debajo de "For you"
                    ),
                  ],
                ),
                const SizedBox(width: 140), // Espaciado entre los textos
                const Column(
                  children: [
                    Text(
                      'Following',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 43, 43, 43),
                        decoration: TextDecoration.none, // Quitar subrayado
                      ),
                    ),
                    SizedBox(height: 4),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: const Color.fromARGB(255, 204, 204, 204), // Línea gris que ocupa todo el ancho
            ),
          ],
        ),
      ),
    );
  }
}

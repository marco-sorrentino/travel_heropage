import 'package:flutter/material.dart';

class NavBottom extends StatelessWidget {
  const NavBottom({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft:
              Radius.circular(20.0), // Bordo arrotondato in alto a sinistra
          topRight: Radius.circular(20.0), // Bordo arrotondato in alto a destra
        ),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(126, 0, 0, 0)
                .withOpacity(0.1), // Colore e opacità dell'ombra
            spreadRadius: 2, // Raggio di espansione dell'ombra
            blurRadius: 10, // Sfocatura dell'ombra
            offset: const Offset(0, 3), // Posizione dell'ombra (x, y)
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft:
              Radius.circular(24.0), // Bordo arrotondato in alto a sinistra
          topRight: Radius.circular(24.0), // Bordo arrotondato in alto a destra
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.space_dashboard_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_rounded),
              label: 'Chart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

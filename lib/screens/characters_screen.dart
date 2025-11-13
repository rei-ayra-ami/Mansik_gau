import 'package:flutter/material.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        ListTile(
          leading: Image.asset(
            'assets/images/characters/isaac.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Isaac',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Начальный персонаж, сбалансированные характеристики.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        const SizedBox(height: 16),
        ListTile(
          leading: Image.asset(
            'assets/images/characters/magdalene.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Magdalene',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Больше здоровья, но меньше скорости.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
      ],
    );
  }
}

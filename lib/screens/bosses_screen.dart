import 'package:flutter/material.dart';

class BossesScreen extends StatelessWidget {
  const BossesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/monstro.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Monstro',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Первый босс. Прыгает и плюёт кровью.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        const SizedBox(height: 16),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/isaac.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Isaac',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Финальный бой с самим собой.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
      ],
    );
  }
}

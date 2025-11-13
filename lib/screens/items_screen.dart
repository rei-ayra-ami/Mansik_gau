import 'package:flutter/material.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        ListTile(
          leading: Image.asset(
            'assets/images/items/sad_onion.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Sad Onion',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            '↑ Скорость стрельбы',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        const SizedBox(height: 16),
        ListTile(
          leading: Image.asset(
            'assets/images/items/pentagram.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Pentagram',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            '↑ Урон + злой облик',
            style: TextStyle(color: Colors.white70),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class BossesScreen extends StatelessWidget {
  const BossesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: const [
        ListTile(
          leading: Icon(Icons.coronavirus, color: Colors.redAccent),
          title: Text('Monstro'),
          subtitle: Text('Первый босс. Прыгает и плюёт кровью.'),
        ),
        ListTile(
          leading: Icon(Icons.coronavirus_outlined, color: Colors.redAccent),
          title: Text('Isaac'),
          subtitle: Text('Финальный бой с самим собой.'),
        ),
      ],
    );
  }
}

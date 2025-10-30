import 'package:flutter/material.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: const [
        ListTile(
          leading: Icon(Icons.bubble_chart, color: Colors.redAccent),
          title: Text('Sad Onion'),
          subtitle: Text('↑ Скорость стрельбы'),
        ),
        ListTile(
          leading: Icon(Icons.local_fire_department, color: Colors.redAccent),
          title: Text('Pentagram'),
          subtitle: Text('↑ Урон + злой облик'),
        ),
      ],
    );
  }
}

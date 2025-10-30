import 'package:flutter/material.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: const [
        ListTile(
          leading: Icon(Icons.person, color: Colors.redAccent),
          title: Text('Isaac'),
          subtitle: Text('Начальный персонаж, сбалансированные характеристики.'),
        ),
        ListTile(
          leading: Icon(Icons.person_2, color: Colors.redAccent),
          title: Text('Magdalene'),
          subtitle: Text('Больше здоровья, но меньше скорости.'),
        ),
      ],
    );
  }
}

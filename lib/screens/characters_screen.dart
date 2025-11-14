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
            'Исаак',
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
            'Магдалена',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Больше здоровья, но меньше скорости.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
                ListTile(
          leading: Image.asset(
            'assets/images/characters/cain.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Каин',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Быстрый и хитрый персонаж, начинает с золотой монетой.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
                        ListTile(
          leading: Image.asset(
            'assets/images/characters/judas.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Иуда',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Слабый, но сбалансированный персонаж с мощными слезами при риске.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
                        ListTile(
          leading: Image.asset(
            'assets/images/characters/blue_man.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            '???',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Таинственный персонаж с нестабильными эффектами слез.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
                        ListTile(
          leading: Image.asset(
            'assets/images/characters/eve.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Ева',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Медленная и хрупкая, может летать и атакует вместе с вороном.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/characters/samson.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Самсон',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Сильный персонаж, получает бонус урона при получении повреждений.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/characters/lazarus.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Лазарь',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Хрупкий персонаж, после смерти может воскреснуть с полной энергией.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/characters/azazel.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Азазель',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Быстрый персонаж с полетом и стартовым демоническим выстрелом.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/characters/eden.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Иден',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Случайный персонаж с уникальными стартовыми предметами и характеристиками.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/characters/the_lost.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Потерянный',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'полностью хрупкий персонаж без здоровья, но с полетом и невидимостью.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/characters/lilith.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Лилит',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Фокусируется на призыве демонов и имеет уникальный игровой процесс.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/characters/keeper.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Хранитель',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Атмосферный персонаж с ограниченными ресурсами и уникальным стилем игры.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/characters/apollyon.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Аполлион',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Персонаж, который поглощает предметы для усиления своих способностей.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/characters/forgotten.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Забытый',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Двойной персонаж, управляющий телом и скелетом с разными атаками.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/characters/bethany.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Бетани',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Персонаж, усиливающий свои способности через книги и жертвуя здоровьем.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/characters/jacob_and_esau.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Джейкоб и Эсау',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Двойной персонаж, управляющий двумя телами с разными способностями.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
      ],
    );
  }
}

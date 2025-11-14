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
            'Монстро',
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
            'Исаак',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Финальный бой с самим собой.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/gemini.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Близнецы',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Пара, где один преследует, а другой резко атакует.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/steven.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Стивен',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Босс, стреляющий слезами и вызывающий маленького двойника.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/pin.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Пин',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Быстро ныряющий под землю босс, внезапно выскакивающий для атаки.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/widow.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Вдова',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Прыгающий паучий босс, засыпающий арену пауками и ловушками.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/haunt.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Преследователь',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Летающий враг, который постоянно преследует игрока и обстреливает его.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/dingle.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Какуля',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Медленный, но мощный босс, стреляющий в игрока взрывными снарядами.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/larry_jr.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Ларри Младший',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Маленький червяк, быстро ползущий и атакующий игрока прямым столкновением.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/duke_of_flies.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Герцог мух',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Большой летающий босс, выпускающий рой мух для атаки игрока.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/famine.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Голод',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Один из всадников Апокалипсиса, атакующий игрока быстрыми ударами и вызывающий голодные эффекты.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/gurgling.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Булькающий',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Босс, который прыгает и выпускает кислотные слезы, наносящие урон при контакте.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/fistula.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Фистула',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Босс с несколькими головами, каждая из которых атакует по-своему.  ',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/the_blighted_ovum.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Скверноплод',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Босс, который является мертвой версией близнецов',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/chub.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Чаб',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Большой босс, который медленно движется и атакует игрока мощными ударами.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/gurdy.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Гёрди',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Большой босс, который атакует игрока, выпуская снаряды',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/gurdy_jr.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Гёрди Младшая',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Меньшая версия Гёрди, которая быстро движется и атакует игрока.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/mega_maw.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Мега пасть',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Босс, который атакует игрока, выпуская волны слез и создавая препятствия на поле боя.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/mega_fatty.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Мега толстяк',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Большой босс, который медленно движется и атакует игрока мощными ударами.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/C.H.A.D.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Ч.А.Д',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Альтернавная версия Чаба с улучшенными атаками и способностями.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/the_carrion_queen.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Королева падали',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Это мёртвая версия Чаба с улучшенными атаками и способностями.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/bosses/the_husk.png',
            width: 50,
            height: 50,
          ),
          title: const Text(
            'Оболочка',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Двигается по комнате как Герцог Мух и атакует игрока снарядами и мухами.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
      ],
    );
  }
}

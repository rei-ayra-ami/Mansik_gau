import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  final List<Map<String, String>> _allItems = [
    // Items
    {
      'name': 'Грустный лук',
      'description': '↑ Скорость стрельбы',
      'type': 'Item',
      'image': 'assets/images/items/sad_onion.png'
    },
    {
      'name': 'Пентаграмма',
      'description': '↑ Урон + злой облик',
      'type': 'Item',
      'image': 'assets/images/items/pentagram.png'
    },

    // Bosses
    {
      'name': 'Монстро',
      'description': 'Первый босс. Прыгает и плюёт кровью.',
      'type': 'Boss',
      'image': 'assets/images/bosses/monstro.png'
    },
    {
      'name': 'Исаак',
      'description': 'Финальный бой с самим собой.',
      'type': 'Boss',
      'image': 'assets/images/bosses/isaac.png'
    },
    {
      'name': 'Близнецы',
      'description': 'Пара, где один преследует, а другой резко атакует.',
      'type': 'Boss',
      'image': 'assets/images/bosses/gemini.png'
    },
    {
      'name': 'Стивен',
      'description': 'Летающий босс, выпускающий рой мух для атаки игрока.',
      'type': 'Boss',
      'image': 'assets/images/bosses/steven.png'
    },
    {
      'name': 'Ларри Младший',
      'description': 'Маленький червяк, быстро ползущий и атакующий игрока прямым столкновением.',
      'type': 'Boss',
      'image': 'assets/images/bosses/larry_jr.png'
    },
    {
      'name': 'Герцог мух',
      'description': 'Большой летающий босс, выпускающий рой мух для атаки игрока.',
      'type': 'Boss',
      'image': 'assets/images/bosses/duke_of_flies.png'
    },

    // Characters
    {
      'name': 'Исаак',
      'description': 'Начальный персонаж, сбалансированные характеристики.',
      'type': 'Character',
      'image': 'assets/images/characters/isaac.png'
    },
    {
      'name': 'Магдалена',
      'description': 'Больше здоровья, но меньше скорости.',
      'type': 'Character',
      'image': 'assets/images/characters/magdalene.png'
    },
  ];

  List<Map<String, String>> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _filteredItems = _allItems;
    _searchController.addListener(_filterAll);
  }

  void _filterAll() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredItems = _allItems.where((item) {
        return item['name']!.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Color _getTypeColor(String type) {
    switch (type) {
      case 'Item':
        return Colors.deepOrangeAccent;
      case 'Boss':
        return Colors.purpleAccent;
      case 'Character':
        return Colors.lightBlueAccent;
      default:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withValues(alpha: 0.87), // ✅ современный вариант
      appBar: AppBar(
        title: const Text('Поиск'),
        centerTitle: true,
        backgroundColor: Colors.black.withValues(alpha: 0.8), // ✅ безопасно
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Поиск...',
                prefixIcon: const Icon(Icons.search, color: Colors.white70),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.white.withValues(alpha: 0.1), // ✅ заменено
              ),
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: _filteredItems.length,
              separatorBuilder: (_, __) => const SizedBox(height: 16),
              itemBuilder: (context, index) {
                final item = _filteredItems[index];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.1), // ✅ современно
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: _getTypeColor(item['type']!).withValues(alpha: 0.8),
                      width: 1.5,
                    ),
                  ),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        item['image']!,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      item['name']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      item['description']!,
                      style: const TextStyle(color: Colors.white70),
                    ),
                    trailing: Text(
                      item['type']!,
                      style: TextStyle(
                        color: _getTypeColor(item['type']!),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

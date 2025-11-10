import 'package:flutter/material.dart';
import 'items_screen.dart';
import 'bosses_screen.dart';
import 'characters_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  String? _username;

  final List<Widget> _screens = const [
    ItemsScreen(),
    BossesScreen(),
    CharactersScreen(),
  ];

  final List<String> _titles = [
    'Предметы',
    'Боссы',
    'Персонажи',
  ];

  @override
  void initState() {
    super.initState();
    _loadUsername();
  }

  Future<void> _loadUsername() async {
    final prefs = await SharedPreferences.getInstance();
    String? name = prefs.getString('username');
    print(name);

    if (name == null || name.isEmpty) {
      // Если имени нет — просим пользователя ввести
      _askUsername();
    } else {
      setState(() {
        _username = name;
      });
    }
  }

  Future<void> _saveUsername(String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', name);
    setState(() {
      _username = name;
    });
  }

  Future<void> _askUsername() async {
    final TextEditingController controller = TextEditingController();
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('Введите имя'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(hintText: 'Ваше имя'),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                if (controller.text.isNotEmpty) {
                  _saveUsername(controller.text).then((_) {
                    Navigator.of(context).pop();
                  });
                }
              },
              child: const Text('Сохранить'),
            ),
          ],
        );
      },
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Привет, ${_username ?? 'Гость'}!',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: _screens[_selectedIndex],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1A0000),
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Предметы',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coronavirus),
            label: 'Боссы',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Персонажи',
          ),
        ],
      ),
    );
  }
}

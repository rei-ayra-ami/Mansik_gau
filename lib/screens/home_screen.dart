import 'package:flutter/material.dart';
import 'items_screen.dart';
import 'bosses_screen.dart';
import 'characters_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titles[_selectedIndex])),
      body: _screens[_selectedIndex],
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

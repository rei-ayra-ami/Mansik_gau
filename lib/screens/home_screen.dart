// home_screen.dart
import 'dart:ui';
import 'package:flutter/material.dart';
import 'items_screen.dart';
import 'bosses_screen.dart';
import 'characters_screen.dart';
import 'profile_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  String? _username;

  late final AnimationController _animationController;
  late final Animation<double> _fadeAnimation;

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

  final List<Color> _screenColors = [
    Colors.deepOrangeAccent,
    Colors.purpleAccent,
    Colors.lightBlueAccent,
  ];

  @override
  void initState() {
    super.initState();
    _loadUsername();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _loadUsername() async {
    final prefs = await SharedPreferences.getInstance();
    final name = prefs.getString('username');

    if (name == null || name.isEmpty) {
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
    final controller = TextEditingController();
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
      _animationController.reset();
      _animationController.forward();
    });
  }

  Widget _buildGreeting() {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Text(
          'Привет, ${_username ?? 'Гость'}!',
          style: TextStyle(
            color: _screenColors[_selectedIndex],
            fontSize: 28,
            fontWeight: FontWeight.bold,
            shadows: const [
              Shadow(
                  blurRadius: 6, color: Colors.black54, offset: Offset(2, 2))
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.9),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: _screenColors[_selectedIndex].withOpacity(0.8),
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: _screenColors[_selectedIndex].withOpacity(0.5),
                blurRadius: 12,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          padding: const EdgeInsets.all(12.0),
          child: _screens[_selectedIndex],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, size: 30),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.25),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildGreeting(),
              _buildContent(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black.withOpacity(0.7),
        selectedItemColor: _screenColors[_selectedIndex],
        unselectedItemColor: Colors.grey[400],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
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

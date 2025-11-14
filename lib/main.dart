import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/home_screen.dart';
import 'screens/form_screen.dart';
import 'firebase_options.dart'; // файл сгенерируется через flutterfire

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const IsaacWikiApp());
}

class IsaacWikiApp extends StatelessWidget {
  const IsaacWikiApp({super.key});

  // Проверяем, есть ли сохранённое имя
  Future<Widget> _getStartScreen() async {
    final prefs = await SharedPreferences.getInstance();
    final username = prefs.getString('username');
    if (username == null || username.isEmpty) {
      return const FormScreen(); // если имени нет, показываем форму
    } else {
      return const HomeScreen(); // если имя сохранено, открываем HomeScreen
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Binding of Isaac Wiki',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'MyFont',
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white70),
          bodySmall: TextStyle(color: Colors.white60),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black87,
          titleTextStyle: TextStyle(
            fontFamily: 'MyFont',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      home: FutureBuilder<Widget>(
        future: _getStartScreen(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          } else if (snapshot.hasError) {
            return Scaffold(
              body: Center(child: Text('Ошибка: ${snapshot.error}')),
            );
          } else {
            return snapshot.data!;
          }
        },
      ),
    );
  }
}

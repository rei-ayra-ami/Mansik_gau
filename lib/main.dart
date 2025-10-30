import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'widgets/isaac_theme.dart';

void main() => runApp(const IsaacWikiApp());

class IsaacWikiApp extends StatelessWidget {
  const IsaacWikiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Binding of Isaac Wiki',
      debugShowCheckedModeBanner: false,
      theme: isaacTheme,
      home: const HomeScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_screen.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadSavedData();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  Future<void> _loadSavedData() async {
    final prefs = await SharedPreferences.getInstance();
    if (!mounted) return; // ✅ предотвращаем ошибку async context
    _nameController.text = prefs.getString('username') ?? '';
    _emailController.text = prefs.getString('email') ?? '';
  }

  Future<void> _saveData(String name, String email) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', name);
    await prefs.setString('email', email);
  }

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      final name = _nameController.text;
      final email = _emailController.text;

      await _saveData(name, email);

      if (!mounted) return; // ✅ безопасная проверка перед использованием context

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Данные сохранены: $name, $email'),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.green.withValues(alpha: 0.9),
        ),
      );

      // Заменяем текущий экран на HomeScreen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withValues(alpha: 0.9), // ✅ современный вариант
      appBar: AppBar(
        title: const Text('Форма ввода данных'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent.withValues(alpha: 0.9),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Имя',
                  labelStyle: const TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.white.withValues(alpha: 0.1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите имя';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: const TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.white.withValues(alpha: 0.1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите email';
                  } else if (!value.contains('@')) {
                    return 'Неверный формат email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.deepOrangeAccent.withValues(alpha: 0.9),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: _submitForm,
                  child: const Text(
                    'Войти',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

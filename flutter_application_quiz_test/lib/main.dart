import 'package:flutter/material.dart'; // Основной пакет Flutter.

void main() {
  // Точка входа в приложение.
  runApp(const MyApp());
}

// Главный виджет приложения.
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Используем super.key.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App', // Название приложения.
      theme: ThemeData(
        primarySwatch: Colors.blue, // Основная цветовая схема.
      ),
      home: const HomePage(), // Указываем стартовый экран.
    );
  }
}

// Главный экран приложения.
class HomePage extends StatelessWidget {
  const HomePage({super.key}); // Используем super.key.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'), // Заголовок на верхней панели.
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Переход на экран настройки команды.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TeamSetupPage()),
            );
          },
          child: const Text('Начать игру'), // Текст на кнопке.
        ),
      ),
    );
  }
}

// Экран настройки команды.
class TeamSetupPage extends StatelessWidget {
  const TeamSetupPage({super.key}); // Используем super.key.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройка команды'), // Заголовок на верхней панели.
      ),
      body: Center(
        child: const Text(
          'Здесь будет ввод количества и названия команды.', // Пример текста.
          style: TextStyle(fontSize: 18), // Настройка размера текста.
          textAlign: TextAlign.center, // Выравнивание текста по центру.
        ),
      ),
    );
  }
}

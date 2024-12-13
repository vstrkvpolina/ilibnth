import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Главный экран')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/habit/1'), // Переход на экран привычки с ID 1
              child: const Text('Перейти к привычке (ID: 1)'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/settings'), // Переход на экран настроек
              child: const Text('Настройки'),
            ),
          ],
        ),
      ),
    );
  }
}

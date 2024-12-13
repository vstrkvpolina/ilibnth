import 'package:flutter/material.dart';

class HabitScreen extends StatelessWidget {
  final String habitId;

  const HabitScreen({super.key, required this.habitId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Экран привычки')),
      body: Center(
        child: Text('ID привычки: $habitId'),
      ),
    );
  }
}

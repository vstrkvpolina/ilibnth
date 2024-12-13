import 'package:flutter/material.dart';
import 'core/router/router.dart'; // Подключаем файл c маршрутами
import 'package:ilibnth/data/models/habit.dart';

void main() {
  runApp(const MyApp(
    // New habit for example // TODO
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter, // Подключаем GoRouter
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

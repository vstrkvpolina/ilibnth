import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Импортируем экраны
import '../../presentation/screens/main_screen.dart';
import '../../presentation/screens/habit_screen.dart';
import '../../presentation/screens/settings_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/', // Главный экран
      name: 'main',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/habit/:id', // Экран привычки
      name: 'habit',
      builder: (context, state) {
        final habitId = state.pathParameters['id']!; // Получаем ID из pathParameters
        return HabitScreen(habitId: habitId); // Передаем ID в экран
      },
    ),
    GoRoute(
      path: '/settings', // Экран настроек
      name: 'settings',
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);

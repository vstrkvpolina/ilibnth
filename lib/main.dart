import 'package:flutter/material.dart';
import 'package:ilibnth/data/models/habit.dart';
import 'core/router/router.dart'; // Подключаем файл c маршрутами
import 'package:hive_flutter/hive_flutter.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter(); // Инициализация Hive

  // Регистрируем адаптерs
  Hive.registerAdapter(HabitAdapter());
  Hive.registerAdapter(DeviceStatusAdapter());  // для использования enum

  // Открываем коробку
  final box = await Hive.openBox<Habit>('habits');

  // Пример объекта Habit
  final newHabit = Habit(
    id: '1',
    userId: 'user123',
    name: 'Morning Workout',
    description: 'Do 15 minutes of stretching',
    isFavorite: true,
  );

  // Сохраняем объект Habit
  await box.put(newHabit.id, newHabit);

  // Загружаем объект Habit
  final savedHabit = box.get(newHabit.id);

  print('Сохранённая привычка: ${savedHabit?.name}');

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

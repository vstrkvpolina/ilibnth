// import 'package:hive/hive.dart';
// import 'package:ilibnth/data/models/habit.dart';

// part 'habit.g.dart';

// @HiveType(typeId: 0)
// class Habit {
//   @HiveField(0)
//   final String id;

//   @HiveField(1)
//   final String userId;

//   @HiveField(2)
//   final String name;

//   @HiveField(3)
//   final String? description;

//   @HiveField(4)
//   final bool isFavorite;


//   Habit({
//     required this.id,
//     required this.userId,
//     required this.name,
//     this.description,
//     this.isFavorite = false,
//   });

//   // Преобразование из Freezed-модели в Hive-модель
//   factory Habit.fromHabit(Habit habit) => Habit(
//         id: habit.id,
//         userId: habit.userId,
//         name: habit.name,
//         description: habit.description,
//         isFavorite: habit.isFavorite,
//       );

//   // Преобразование из Hive-модели в Freezed-модель
//   Habit toHabit() => Habit(
//         id: id,
//         userId: userId,
//         name: name,
//         description: description,
//         isFavorite: isFavorite,
//       );
// }

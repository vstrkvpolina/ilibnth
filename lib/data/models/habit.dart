import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'habit.freezed.dart';
part 'habit.g.dart';

@HiveType(typeId: 2)
enum DeviceStatus {
  @HiveField(0)
  functional,
  @HiveField(1)
  unreachable,
  @HiveField(2)
  error,
}

@HiveType(typeId: 0, adapterName: 'HabitAdapter')

@freezed
class Habit with _$Habit {

  const factory Habit({
    @HiveField(0) @Default('') @JsonKey(name: '_id') String id, // Уникальный идентификатор привычки
    @HiveField(1) @Default('') String userId,
    @HiveField(2) @Default('') String name, // Название привычки
    @HiveField(3) @Default('') String? description, // Описание (опционально)
    @HiveField(4) @Default(false) bool isFavorite, // Флаг "избранное"
    // TODO
    // created at
    // expired at 
    // progress
  }) = _Habit;

  // Автоматическая генерация методов toJson и fromJson фабрика рабочая
  factory Habit.fromJson(Map<String, dynamic> json) => _$HabitFromJson(json);
}

// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:hive/hive.dart';

// part 'habit.freezed.dart';
// part 'habit.g.dart';

// @HiveType(typeId: 0, adapterName: 'HabitAdapter')
// @freezed
// class Habit with _$Habit {
//   const factory Habit({
//     @HiveField(0) @Default('') @JsonKey(name: '_id') String id, // Уникальный идентификатор
//     @HiveField(1) @Default('') String userId,
//     @HiveField(2) @Default('') String name, // Название привычки
//     @HiveField(3) @Default('') String? description, // Описание (опционально)
//     @HiveField(4) @Default(false) bool isFavorite, // Флаг "избранное"
//     // TODO
//     // created at
//     // expired at 
//     // progress
//   }) = _Habit;

//   factory Habit.fromJson(Map<String, dynamic> json) => _$HabitFromJson(json);
// }

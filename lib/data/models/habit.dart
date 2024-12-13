import 'package:freezed_annotation/freezed_annotation.dart';


part 'habit.freezed.dart';
part 'habit.g.dart';

@freezed
class Habit with _$Habit {
  const factory Habit({
    @Default('') @JsonKey(name: '_id') String id, // Уникальный идентификатор привычки
    @Default('') String userId,
    @Default('') String name, // Название привычки
    @Default('') String? description, // Описание (опционально)
    @Default(false) bool isFavorite, // Флаг "избранное"
    // TODO
    // created at
    // expired at 
    // progress
  }) = _Habit;

  // Автоматическая генерация методов toJson и fromJson фабрика рабочая
  factory Habit.fromJson(Map<String, dynamic> json) => _$HabitFromJson(json);
}
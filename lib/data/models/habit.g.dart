// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HabitAdapter extends TypeAdapter<Habit> {
  @override
  final int typeId = 0;

  @override
  Habit read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Habit(
      id: fields[0] as String,
      userId: fields[1] as String,
      name: fields[2] as String,
      description: fields[3] as String?,
      isFavorite: fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Habit obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.isFavorite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HabitAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DeviceStatusAdapter extends TypeAdapter<DeviceStatus> {
  @override
  final int typeId = 2;

  @override
  DeviceStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return DeviceStatus.functional;
      case 1:
        return DeviceStatus.unreachable;
      case 2:
        return DeviceStatus.error;
      default:
        return DeviceStatus.functional;
    }
  }

  @override
  void write(BinaryWriter writer, DeviceStatus obj) {
    switch (obj) {
      case DeviceStatus.functional:
        writer.writeByte(0);
        break;
      case DeviceStatus.unreachable:
        writer.writeByte(1);
        break;
      case DeviceStatus.error:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HabitImpl _$$HabitImplFromJson(Map<String, dynamic> json) => _$HabitImpl(
      id: json['_id'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$HabitImplToJson(_$HabitImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'name': instance.name,
      'description': instance.description,
      'isFavorite': instance.isFavorite,
    };

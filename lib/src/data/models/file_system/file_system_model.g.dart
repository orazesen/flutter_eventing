// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_system_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FileSystemImplAdapter extends TypeAdapter<_$FileSystemImpl> {
  @override
  final int typeId = 0;

  @override
  _$FileSystemImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$FileSystemImpl(
      id: fields[0] as String,
      name: fields[1] as String,
      size: fields[2] as int,
      createdAt: fields[3] as DateTime,
      modifiedAt: fields[4] as DateTime,
      events: (fields[5] as List).cast<EventModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$FileSystemImpl obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.size)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.modifiedAt)
      ..writeByte(5)
      ..write(obj.events);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FileSystemImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileSystemImpl _$$FileSystemImplFromJson(Map<String, dynamic> json) =>
    _$FileSystemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      size: (json['size'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      modifiedAt: DateTime.parse(json['modifiedAt'] as String),
      events: (json['events'] as List<dynamic>)
          .map((e) => EventModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FileSystemImplToJson(_$FileSystemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'size': instance.size,
      'createdAt': instance.createdAt.toIso8601String(),
      'modifiedAt': instance.modifiedAt.toIso8601String(),
      'events': instance.events,
    };

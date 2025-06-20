import 'package:eventing/src/data/models/event/event_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'file_system_model.freezed.dart';
part 'file_system_model.g.dart';

@freezed
class FileSystemModel with _$FileSystemModel {
  @HiveType(typeId: 0)
  factory FileSystemModel({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required int size,
    @HiveField(3) required DateTime createdAt,
    @HiveField(4) required DateTime modifiedAt,
    @HiveField(5) required List<EventModel> events,
  }) = _FileSystem;

  factory FileSystemModel.fromJson(Map<String, dynamic> json) =>
      _$FileSystemModelFromJson(json);
}

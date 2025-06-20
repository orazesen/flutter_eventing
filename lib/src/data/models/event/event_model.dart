import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  @HiveType(typeId: 1)
  const factory EventModel({
    @HiveField(0) required int id,
    @HiveField(1) @JsonKey(name: 'image_url') required String? imageUrl,
    @HiveField(2) @JsonKey(name: 'title') required String? title,
    @HiveField(3) @JsonKey(name: 'date') required DateTime? dateTime,
  }) = _Event;

  factory EventModel.fromJson(Map<String, Object?> json) =>
      _$EventModelFromJson(json);
}

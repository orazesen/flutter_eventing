import 'package:eventing/src/data/models/file_system/file_system_model.dart';
import 'package:eventing/src/domain/entities/event/event.dart';

class FileSystem {
  final String id;
  final String name;
  final int size;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final List<Event> events;

  FileSystem({
    required this.id,
    required this.name,
    required this.size,
    required this.createdAt,
    required this.modifiedAt,
    required this.events,
  });

  factory FileSystem.fromModel(FileSystemModel model) => FileSystem(
    id: model.id,
    name: model.name,
    size: model.size,
    createdAt: model.createdAt,
    modifiedAt: model.modifiedAt,
    events: model.events.map((e) => Event.fromModel(e)).toList(),
  );

  FileSystemModel toModel() => FileSystemModel(
    id: id,
    name: name,
    size: size,
    createdAt: createdAt,
    modifiedAt: modifiedAt,
    events: events.map((e) => e.toModel()).toList(),
  );
}

import 'package:eventing/src/data/models/file_system/file_system_model.dart';
import 'package:eventing/src/domain/data_sources/i_local_data_source.dart';
import 'package:eventing/src/domain/entities/file_system/file_system.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@Injectable(as: ILocalDataSource)
class LocalDataSourceImpl implements ILocalDataSource {
  @override
  Future<List<FileSystem>> getFiles() async {
    try {
      final box = await Hive.openBox<FileSystemModel>("filesBox");
      List<FileSystem> files = box.values
          .map((e) => FileSystem.fromModel(e))
          .toList();
      await box.close();
      if (files.isEmpty) {
        files.add(
          FileSystem(
            id: Uuid().v4(),
            name: "All Events",
            size: 0,
            createdAt: DateTime.now(),
            modifiedAt: DateTime.now(),
            events: [],
          ),
        );
        await setFiles(files: files);
      }
      return files;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> setFiles({required List<FileSystem> files}) async {
    try {
      final box = await Hive.openBox<FileSystemModel>("filesBox");
      await box.clear();
      await box.addAll(files.map((e) => e.toModel()));
      await box.close();
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> addFile({required FileSystem file}) async {
    try {
      final box = await Hive.openBox<FileSystemModel>("filesBox");
      await box.add(file.toModel());
      await box.close();
      return true;
    } catch (e) {
      rethrow;
    }
  }
}

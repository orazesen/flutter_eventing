import 'package:eventing/src/domain/entities/file_system/file_system.dart';

abstract class ILocalDataSource {
  Future<List<FileSystem>> getFiles();
  Future<bool> setFiles({required List<FileSystem> files});
  Future<bool> addFile({required FileSystem file});
}

import 'package:eventing/src/domain/entities/file_system/file_system.dart';

abstract class IFileSystemRepository {
  Future<List<FileSystem>> getFiles();
  Future<bool> addFile(FileSystem file);
  Future<bool> setFiles({required List<FileSystem> files});
}

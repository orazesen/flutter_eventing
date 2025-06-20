import 'package:eventing/src/domain/data_sources/i_local_data_source.dart';
import 'package:eventing/src/domain/entities/file_system/file_system.dart';
import 'package:eventing/src/domain/repositories/i_file_system_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IFileSystemRepository)
class FileSystemRepositoryImpl implements IFileSystemRepository {
  final ILocalDataSource localDataSource;

  FileSystemRepositoryImpl(this.localDataSource);
  @override
  Future<List<FileSystem>> getFiles() async {
    try {
      final files = await localDataSource.getFiles();
      return files;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> setFiles({required List<FileSystem> files}) {
    try {
      return localDataSource.setFiles(files: files);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> addFile(FileSystem file) {
    try {
      return localDataSource.addFile(file: file);
    } catch (e) {
      rethrow;
    }
  }
}

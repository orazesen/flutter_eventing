import 'package:eventing/src/domain/entities/event/event.dart';
import 'package:eventing/src/domain/entities/file_system/file_system.dart';
import 'package:eventing/src/domain/repositories/i_file_system_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'file_system_cubit.freezed.dart';
part 'file_system_state.dart';

@injectable
class FileSystemCubit extends Cubit<FileSystemState> {
  FileSystemCubit(this.fileSystemRepository) : super(_Loading()) {
    loadFiles();
  }

  final IFileSystemRepository fileSystemRepository;

  List<FileSystem> files = [];

  Future<void> loadFiles() async {
    files = await fileSystemRepository.getFiles();
    emit(_Loaded(files: files));
  }

  Future<void> addFolder(FileSystem file) async {
    emit(_Loading());
    await Future.delayed(Duration(seconds: 1));
    await fileSystemRepository.addFile(file);
    loadFiles();
  }

  Future<void> addFavorite({required Event event, FileSystem? file}) async {
    emit(_Loading());
    FileSystem currentFolder;
    if (file != null) {
      currentFolder = files.firstWhere((e) => e.id == file.id);
    } else {
      currentFolder = files[0];
    }
    if (currentFolder.events
        .where((element) => element.id == event.id)
        .isEmpty) {
      currentFolder.events.add(event);
    }

    await fileSystemRepository.setFiles(files: files);
    emit(_Loaded(files: files));
  }

  Future<void> removeFavorite({
    required Event event,
    required FileSystem file,
  }) async {
    emit(_Loading());
    final folder = files.firstWhere((e) => e.id == file.id);
    if (folder.events.contains(event)) {
      folder.events.remove(event);
    }

    await fileSystemRepository.setFiles(files: files);
    emit(_Loaded(files: files));
  }
}

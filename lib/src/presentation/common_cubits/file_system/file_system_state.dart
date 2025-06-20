part of 'file_system_cubit.dart';

@freezed
class FileSystemState with _$FileSystemState {
  const factory FileSystemState.loading() = _Loading;
  const factory FileSystemState.loaded({required List<FileSystem> files}) =
      _Loaded;
  const factory FileSystemState.empty() = _Empty;
}

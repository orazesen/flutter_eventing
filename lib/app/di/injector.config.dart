// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:eventing/src/data/data_sources/local_data_source_impl.dart'
    as _i142;
import 'package:eventing/src/data/data_sources/remote_data_source_impl.dart'
    as _i682;
import 'package:eventing/src/data/repositories/events_repository_impl.dart'
    as _i306;
import 'package:eventing/src/data/repositories/file_system_repository_impl.dart'
    as _i548;
import 'package:eventing/src/domain/data_sources/i_local_data_source.dart'
    as _i366;
import 'package:eventing/src/domain/data_sources/i_remote_data_source.dart'
    as _i798;
import 'package:eventing/src/domain/repositories/i_events_repository.dart'
    as _i124;
import 'package:eventing/src/domain/repositories/i_file_system_repository.dart'
    as _i459;
import 'package:eventing/src/presentation/common_cubits/file_system/file_system_cubit.dart'
    as _i880;
import 'package:eventing/src/presentation/pages/events/cubit/events_cubit.dart'
    as _i477;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i798.IRemoteDataSource>(() => _i682.RemoteDataSourceImpl());
    gh.factory<_i366.ILocalDataSource>(() => _i142.LocalDataSourceImpl());
    gh.factory<_i124.IEventsRepository>(() => _i306.EventsRepositoryImpl(
          gh<_i366.ILocalDataSource>(),
          gh<_i798.IRemoteDataSource>(),
        ));
    gh.factory<_i459.IFileSystemRepository>(
        () => _i548.FileSystemRepositoryImpl(gh<_i366.ILocalDataSource>()));
    gh.factory<_i477.EventsCubit>(
        () => _i477.EventsCubit(gh<_i124.IEventsRepository>()));
    gh.factory<_i880.FileSystemCubit>(
        () => _i880.FileSystemCubit(gh<_i459.IFileSystemRepository>()));
    return this;
  }
}

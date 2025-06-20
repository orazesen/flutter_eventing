import 'package:eventing/src/domain/data_sources/i_local_data_source.dart';
import 'package:eventing/src/domain/data_sources/i_remote_data_source.dart';
import 'package:eventing/src/domain/entities/event/event.dart';
import 'package:eventing/src/domain/repositories/i_events_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IEventsRepository)
class EventsRepositoryImpl implements IEventsRepository {
  final ILocalDataSource localDataSource;
  final IRemoteDataSource remoteDataSource;

  EventsRepositoryImpl(this.localDataSource, this.remoteDataSource);

  @override
  Future<List<Event>> getEvents() async {
    try {
      final models = await remoteDataSource.getEvents();

      return models.map((e) => Event.fromModel(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}

import 'package:eventing/src/data/models/event/event_model.dart';

abstract class IRemoteDataSource {
  Future<List<EventModel>> getEvents();
}

import 'package:eventing/src/domain/entities/event/event.dart';

abstract class IEventsRepository {
  Future<List<Event>> getEvents();
}

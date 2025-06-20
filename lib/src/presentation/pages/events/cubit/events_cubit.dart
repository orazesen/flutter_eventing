import 'package:eventing/src/domain/entities/event/event.dart';
import 'package:eventing/src/domain/repositories/i_events_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'events_cubit.freezed.dart';
part 'events_state.dart';

@injectable
class EventsCubit extends Cubit<EventsState> {
  EventsCubit(this.eventsRepository) : super(_Loading());

  final IEventsRepository eventsRepository;

  Future<void> getEvents() async {
    try {
      emit(_Loading());
      final events = await eventsRepository.getEvents();
      emit(_Loaded(events: events));
    } catch (e) {
      emit(_Empty());
    }
  }
}

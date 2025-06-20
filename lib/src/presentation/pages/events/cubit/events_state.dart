part of 'events_cubit.dart';

@freezed
class EventsState with _$EventsState {
  const factory EventsState.loading() = _Loading;
  const factory EventsState.loaded({required List<Event> events}) = _Loaded;
  const factory EventsState.empty() = _Empty;
}

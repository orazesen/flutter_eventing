import 'package:eventing/src/data/models/event/event_model.dart';
import 'package:eventing/src/domain/types/event_date_time.dart';
import 'package:eventing/src/domain/types/event_image_url.dart';
import 'package:eventing/src/domain/types/event_title.dart';

class Event {
  final int id;
  final EventImageUrl imageUrl;
  final EventTitle title;
  final EventDateTime date;

  Event({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.date,
  });

  factory Event.fromModel(EventModel model) {
    return Event(
      id: model.id,
      imageUrl: EventImageUrl(url: model.imageUrl),
      title: EventTitle(title: model.title),
      date: EventDateTime(dateTime: model.dateTime),
    );
  }

  EventModel toModel() => EventModel(
    id: id,
    imageUrl: imageUrl.url,
    title: title.title,
    dateTime: date.dateTime,
  );
}

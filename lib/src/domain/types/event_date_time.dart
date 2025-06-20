class EventDateTime {
  late DateTime dateTime;

  EventDateTime({DateTime? dateTime}) {
    this.dateTime = dateTime ?? DateTime(1912, 1, 1);
  }

  @override
  String toString() {
    return 'EventDateTime(dateTime: $dateTime)';
  }
}

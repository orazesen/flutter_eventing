class EventTitle {
  late String title;

  EventTitle({String? title}) {
    this.title = title ?? 'Not found!';
  }

  @override
  String toString() {
    return 'EventTitle(title: $title)';
  }
}

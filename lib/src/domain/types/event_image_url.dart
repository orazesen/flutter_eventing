class EventImageUrl {
  late String url;

  EventImageUrl({String? url}) {
    this.url = url ?? 'not_found.jpg';
  }

  @override
  String toString() {
    return 'EventImageUrl(url: $url)';
  }
}
